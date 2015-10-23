;NadaBot
;By: Benjamin Coons
;v1.0.1

;Main Program Space
WinActivate, Nada
randSleep(3000,15000)
Loop
	{
		CoordMode Pixel, Screen
		ImageSearch, outX, outY, 0, 0, A_ScreenWidth, A_ScreenHeight, button.png
		if ErrorLevel = 2
			{
				MsgBox, Could not conduct the search.
				ExitApp
			}
		else if ErrorLevel = 1
			{
				randMouseMove()
				randSleep(10000, 15000)
			}
		else
			{
				buttonClick(outX, outY)
				randSleep(5000, 12000)
			}
	}

;Functions
randSleep(x, y)
	{
		Random, sleepTime, x, y
		Sleep, sleepTime
		return
	}

randMouseMove()
	{
		CoordMode, Mouse, Screen
		Random, speed, 20, 90
		Random, moveX, 0, A_ScreenWidth
		Random, moveY, 0, A_ScreenHeight
		MouseMove, moveX, moveY, speed
		return
	}

buttonClick(x, y)
	{
		CoordMode, Mouse, Screen
		Random, randX, 1, 10
		Random, randY, 1, 10
		Random, speed, 20, 90
		MouseClick, left, x+randX, y+randY, speed
	}