using System;
using System.Collections.Generic;
using Gendarme;
using UnityEngine;

public partial class GameInput : MonoBehaviour
{
	private void UpdateAxisValues(bool useKeyboard, bool useController)
	{
		for (int i = 0; i < GameInput.axisValues.Length; i++)
		{
			GameInput.axisValues[i] = 0f;
		}
		if (useController)
		{
			if (GameInput.GetUseOculusInputManager())
			{
				Vector2 vector = OVRInput.Get(OVRInput.RawAxis2D.LThumbstick, OVRInput.Controller.Active);
				GameInput.axisValues[2] = vector.x;
				GameInput.axisValues[3] = -vector.y;
				Vector2 vector2 = OVRInput.Get(OVRInput.RawAxis2D.RThumbstick, OVRInput.Controller.Active);
				GameInput.axisValues[0] = vector2.x;
				GameInput.axisValues[1] = -vector2.y;
				GameInput.axisValues[4] = OVRInput.Get(OVRInput.RawAxis1D.LIndexTrigger, OVRInput.Controller.Active);
				GameInput.axisValues[5] = OVRInput.Get(OVRInput.RawAxis1D.RIndexTrigger, OVRInput.Controller.Active);
				GameInput.axisValues[6] = 0f;
				if (OVRInput.Get(OVRInput.RawButton.DpadLeft, OVRInput.Controller.Active))
				{
					GameInput.axisValues[6] -= 1f;
				}
				if (OVRInput.Get(OVRInput.RawButton.DpadRight, OVRInput.Controller.Active))
				{
					GameInput.axisValues[6] += 1f;
				}
				GameInput.axisValues[7] = 0f;
				if (OVRInput.Get(OVRInput.RawButton.DpadUp, OVRInput.Controller.Active))
				{
					GameInput.axisValues[7] += 1f;
				}
				if (OVRInput.Get(OVRInput.RawButton.DpadDown, OVRInput.Controller.Active))
				{
					GameInput.axisValues[7] -= 1f;
				}
			}
			else
			{
				GameInput.ControllerLayout controllerLayout = GameInput.GetControllerLayout();
				if (controllerLayout == GameInput.ControllerLayout.Xbox360 || controllerLayout == GameInput.ControllerLayout.XboxOne || GameInput.IsPS4OrPS5Platform() || controllerLayout == GameInput.ControllerLayout.Scarlett)
				{
					GameInput.axisValues[0] = UnityEngine.Input.GetAxis("ControllerAxis3");
					GameInput.axisValues[1] = UnityEngine.Input.GetAxis("ControllerAxis4");
					GameInput.axisValues[2] = UnityEngine.Input.GetAxis("ControllerAxis1");
					GameInput.axisValues[3] = UnityEngine.Input.GetAxis("ControllerAxis2");
					GameInput.axisValues[4] = UnityEngine.Input.GetAxis("ControllerAxis5");
					GameInput.axisValues[5] = UnityEngine.Input.GetAxis("ControllerAxis6");
					// D-Pad mapping is unusual: https://cdn.discordapp.com/attachments/691713766534152288/1062018108346335262/IMG_0062.PNG
					// decoder required
					float axis = UnityEngine.Input.GetAxis("ControllerAxis7");
					float axis2 = UnityEngine.Input.GetAxis("ControllerAxis8");
					float dpadX = 0f;
					float dpadY = 0f;
					if ((axis != 0f && axis2 != 0f) || (axis != 0f && axis2 != -1f)) {
						if (axis2 == -1f && axis == 1f) {
							dpadY = 1f;
						}
						else if (axis2 == 1f && axis == -1f) {
							dpadY = -1f;
						}
						else if (axis2 == 1f && axis == 1f) {
							dpadX = 1f;
						}
						else if (axis2 == -1f && axis == -1f) {
							dpadX = -1f;
						}
					}
					GameInput.axisValues[6] = dpadX;
					GameInput.axisValues[7] = dpadY;
				}
			}
		}
		if (useKeyboard)
		{
			GameInput.axisValues[10] = UnityEngine.Input.GetAxis("Mouse ScrollWheel");
			GameInput.axisValues[8] = UnityEngine.Input.GetAxisRaw("Mouse X");
			GameInput.axisValues[9] = UnityEngine.Input.GetAxisRaw("Mouse Y");
		}
		for (int j = 0; j < GameInput.axisValues.Length; j++)
		{
			GameInput.AnalogAxis analogAxis = (GameInput.AnalogAxis)j;
			GameInput.Device deviceForAxis = this.GetDeviceForAxis(analogAxis);
			float num3 = GameInput.lastAxisValues[j] - GameInput.axisValues[j];
			GameInput.lastAxisValues[j] = GameInput.axisValues[j];
			if (deviceForAxis != GameInput.lastDevice)
			{
				float num4 = 0.1f;
				if (Mathf.Abs(num3) > num4)
				{
					GameInput.lastDevice = deviceForAxis;
				}
				else
				{
					GameInput.axisValues[j] = 0f;
				}
			}
		}
	}
}
