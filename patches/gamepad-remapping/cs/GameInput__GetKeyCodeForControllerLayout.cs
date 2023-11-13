using System;
using System.Collections.Generic;
using Gendarme;
using UnityEngine;

// Token: 0x020003D2 RID: 978
public partial class GameInput : MonoBehaviour
{
	// Token: 0x0600193F RID: 6463 RVA: 0x000A80A0 File Offset: 0x000A62A0
	private KeyCode GetKeyCodeForControllerLayout(KeyCode keyCode, GameInput.ControllerLayout controllerLayout)
	{
		if (controllerLayout == GameInput.ControllerLayout.PS4 || controllerLayout == GameInput.ControllerLayout.PS5)
		{
			if (keyCode >= KeyCode.JoystickButton0 && keyCode <= KeyCode.Joystick8Button19)
			{
				switch (keyCode)
				{
				case KeyCode.JoystickButton3:
					return KeyCode.JoystickButton0;
				case KeyCode.JoystickButton4:
					return KeyCode.JoystickButton3;
				case KeyCode.JoystickButton5:
					return KeyCode.JoystickButton4;
				case KeyCode.JoystickButton6:
					return KeyCode.JoystickButton5;
				case KeyCode.JoystickButton7:
					return KeyCode.JoystickButton13;
				case KeyCode.JoystickButton8:
					return KeyCode.JoystickButton9;
				case KeyCode.JoystickButton9:
					return KeyCode.JoystickButton10;
				case KeyCode.JoystickButton10:
					return KeyCode.JoystickButton11;
				case KeyCode.JoystickButton11:
					return KeyCode.JoystickButton8;
				}
			}
			return keyCode;
		}
		return keyCode;
	}
}
