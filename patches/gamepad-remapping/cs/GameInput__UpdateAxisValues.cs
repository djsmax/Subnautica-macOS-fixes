// Tested on Game version: march 2023 build 71288
using System;
using System.Collections.Generic;
using Gendarme;
using Platform.Utils;
using UnityEngine;

// Token: 0x020002DB RID: 731
public partial class GameInput : MonoBehaviour
{
	// Token: 0x06001645 RID: 5701
	private void UpdateAxisValues(bool useKeyboard, bool useController)
	{
		for (int i = 0; i < GameInput.axisValues.Length; i++)
		{
			GameInput.axisValues[i] = 0f;
		}
		if (useController)
		{
			Vector2 vector2;
			Vector2 vector4;
			float num;
			float num2;
			float num3;
			float num4;
			if (GameInput.GetUseOculusInputManager())
			{
				Vector2 vector = OVRInput.Get(OVRInput.RawAxis2D.LThumbstick, OVRInput.Controller.Active);
				vector2.x = vector.x;
				vector2.y = -vector.y;
				Vector2 vector3 = OVRInput.Get(OVRInput.RawAxis2D.RThumbstick, OVRInput.Controller.Active);
				vector4.x = vector3.x;
				vector4.y = -vector3.y;
				num = OVRInput.Get(OVRInput.RawAxis1D.LIndexTrigger, OVRInput.Controller.Active);
				num2 = OVRInput.Get(OVRInput.RawAxis1D.RIndexTrigger, OVRInput.Controller.Active);
				num3 = 0f;
				if (OVRInput.Get(OVRInput.RawButton.DpadLeft, OVRInput.Controller.Active))
				{
					num3 -= 1f;
				}
				if (OVRInput.Get(OVRInput.RawButton.DpadRight, OVRInput.Controller.Active))
				{
					num3 += 1f;
				}
				num4 = 0f;
				if (OVRInput.Get(OVRInput.RawButton.DpadDown, OVRInput.Controller.Active))
				{
					num4 -= 1f;
				}
				if (OVRInput.Get(OVRInput.RawButton.DpadUp, OVRInput.Controller.Active))
				{
					num4 += 1f;
				}
			}
			else
			{
				GameInput.ControllerLayout controllerLayout = GameInput.GetControllerLayout();
				switch (controllerLayout)
				{
				case GameInput.ControllerLayout.Xbox360:
				{
					vector2.x = UnityEngine.Input.GetAxis("ControllerAxis1");
					vector2.y = UnityEngine.Input.GetAxis("ControllerAxis2");
					vector4.x = UnityEngine.Input.GetAxis("ControllerAxis3");
					vector4.y = UnityEngine.Input.GetAxis("ControllerAxis4");
					num = UnityEngine.Input.GetAxis("ControllerAxis5");
					num2 = UnityEngine.Input.GetAxis("ControllerAxis6");
					float axis = UnityEngine.Input.GetAxis("ControllerAxis7");
					float axis2 = UnityEngine.Input.GetAxis("ControllerAxis8");
					float dpadX = 0f;
					float dpadY = 0f;
					if ((axis != 0f && axis2 != 0f) || (axis != 0f && axis2 != -1f))
					{
						if (axis2 == -1f && axis == 1f)
						{
							dpadY = 1f;
						}
						else if (axis2 == 1f && axis == -1f)
						{
							dpadY = -1f;
						}
						else if (axis2 == 1f && axis == 1f)
						{
							dpadX = 1f;
						}
						else if (axis2 == -1f && axis == -1f)
						{
							dpadX = -1f;
						}
					}
					num3 = dpadX;
					num4 = dpadY;
					break;
				}
				case GameInput.ControllerLayout.XboxOne:
				{
					vector2.x = UnityEngine.Input.GetAxis("ControllerAxis1");
					vector2.y = UnityEngine.Input.GetAxis("ControllerAxis2");
					vector4.x = UnityEngine.Input.GetAxis("ControllerAxis3");
					vector4.y = UnityEngine.Input.GetAxis("ControllerAxis4");
					num = UnityEngine.Input.GetAxis("ControllerAxis5");
					num2 = UnityEngine.Input.GetAxis("ControllerAxis6");
					float axis = UnityEngine.Input.GetAxis("ControllerAxis7");
					float axis2 = UnityEngine.Input.GetAxis("ControllerAxis8");
					float dpadX = 0f;
					float dpadY = 0f;
					if ((axis != 0f && axis2 != 0f) || (axis != 0f && axis2 != -1f))
					{
						if (axis2 == -1f && axis == 1f)
						{
							dpadY = 1f;
						}
						else if (axis2 == 1f && axis == -1f)
						{
							dpadY = -1f;
						}
						else if (axis2 == 1f && axis == 1f)
						{
							dpadX = 1f;
						}
						else if (axis2 == -1f && axis == -1f)
						{
							dpadX = -1f;
						}
					}
					num3 = dpadX;
					num4 = dpadY;
					break;
				}
				case GameInput.ControllerLayout.PS4:
					vector2.x = UnityEngine.Input.GetAxis("ControllerAxis1");
					vector2.y = UnityEngine.Input.GetAxis("ControllerAxis2");
					vector4.x = UnityEngine.Input.GetAxis("ControllerAxis3");
					vector4.y = UnityEngine.Input.GetAxis("ControllerAxis6");
					num = UnityEngine.Input.GetAxis("ControllerAxis4") * 0.5f + 0.5f;
					num2 = UnityEngine.Input.GetAxis("ControllerAxis5") * 0.5f + 0.5f;
					num3 = UnityEngine.Input.GetAxis("ControllerAxis7");
					num4 = UnityEngine.Input.GetAxis("ControllerAxis8");
					break;
				case GameInput.ControllerLayout.Switch:
					vector2.x = InputUtils.GetAxis("ControllerAxis1");
					vector2.y = InputUtils.GetAxis("ControllerAxis2");
					vector4.x = InputUtils.GetAxis("ControllerAxis4");
					vector4.y = InputUtils.GetAxis("ControllerAxis5");
					num = Mathf.Max(InputUtils.GetAxis("ControllerAxis3"), 0f);
					num2 = Mathf.Max(-InputUtils.GetAxis("ControllerAxis3"), 0f);
					num3 = InputUtils.GetAxis("ControllerAxis6");
					num4 = InputUtils.GetAxis("ControllerAxis7");
					break;
				case GameInput.ControllerLayout.Scarlett:
					vector2.x = UnityEngine.Input.GetAxis("ControllerAxis1");
					vector2.y = UnityEngine.Input.GetAxis("ControllerAxis2");
					vector4.x = UnityEngine.Input.GetAxis("ControllerAxis4");
					vector4.y = UnityEngine.Input.GetAxis("ControllerAxis5");
					num = Mathf.Max(UnityEngine.Input.GetAxis("ControllerAxis9"), 0f);
					num2 = Mathf.Max(UnityEngine.Input.GetAxis("ControllerAxis10"), 0f);
					num3 = UnityEngine.Input.GetAxis("ControllerAxis6");
					num4 = UnityEngine.Input.GetAxis("ControllerAxis7");
					break;
				case GameInput.ControllerLayout.PS5:
					vector2.x = UnityEngine.Input.GetAxis("ControllerAxis1");
					vector2.y = UnityEngine.Input.GetAxis("ControllerAxis2");
					vector4.x = UnityEngine.Input.GetAxis("ControllerAxis3");
					vector4.y = UnityEngine.Input.GetAxis("ControllerAxis6");
					num = UnityEngine.Input.GetAxis("ControllerAxis4") * 0.5f + 0.5f;
					num2 = UnityEngine.Input.GetAxis("ControllerAxis5") * 0.5f + 0.5f;
					num3 = UnityEngine.Input.GetAxis("ControllerAxis7");
					num4 = UnityEngine.Input.GetAxis("ControllerAxis8");
					break;
				default:
					throw new NotImplementedException(string.Format("{0} ControllerLayout support is not implemented!", controllerLayout));
				}
			}
			vector2 = GameInput.Resample(vector2, 0.2f, 1f);
			GameInput.axisValues[2] = vector2.x;
			GameInput.axisValues[3] = vector2.y;
			vector4 = GameInput.Resample(vector4, 0.2f, 1f);
			GameInput.axisValues[0] = vector4.x;
			GameInput.axisValues[1] = vector4.y;
			GameInput.axisValues[4] = GameInput.Resample(num, 0.001f, 1f);
			GameInput.axisValues[5] = GameInput.Resample(num2, 0.001f, 1f);
			GameInput.axisValues[6] = GameInput.Resample(num3, 0.001f, 1f);
			GameInput.axisValues[7] = GameInput.Resample(num4, 0.001f, 1f);
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
			float num5 = GameInput.lastAxisValues[j] - GameInput.axisValues[j];
			GameInput.lastAxisValues[j] = GameInput.axisValues[j];
			if (deviceForAxis != GameInput.lastDevice)
			{
				float num6 = 0.1f;
				if (Mathf.Abs(num5) > num6)
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
