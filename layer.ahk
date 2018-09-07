#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force

SetKeyDelay, -1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Left (n)

$*n::
	if IsSecondLayerActive()
		; Avoid releasing modifiers with {Blind}
		SendInput, {Blind}{Left}
	else
		SendInput, {Blind}n
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Down (e)

$*e::
	if IsSecondLayerActive()
		SendInput, {Blind}{Down}
	else
		SendInput, {Blind}e
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Right (i)

$*i::
	if IsSecondLayerActive()
		SendInput, {Blind}{Right}
	else
		SendInput, {Blind}i
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Up (u)

$*u::
	if IsSecondLayerActive()
		SendInput, {Blind}{Up}
	else
		SendInput, {Blind}u
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Home (l)

$*l::
	if IsSecondLayerActive()
		SendInput, {Blind}{Home}
	else
		SendInput, {Blind}l
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; End (y)

$*y::
	if IsSecondLayerActive()
		SendInput, {Blind}{End}
	else
		SendInput, {Blind}y
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Delete (;)

$*;::
	if IsSecondLayerActive()
		SendInput, {Blind}{Delete}
	else
		SendInput, {Blind}`;
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Backspace (o)

$*o::
	if IsSecondLayerActive()
		SendInput, {Blind}{Backspace}
	else
		SendInput, {Blind}o
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; FN keys (1-0,-,=)


$*1::
	if IsSecondLayerActive()
		SendInput, {Blind}{F1}
	else
		SendInput, {Blind}1
return

$*2::
	if IsSecondLayerActive()
		SendInput, {Blind}{F2}
	else
		SendInput, {Blind}2
return

$*3::
	if IsSecondLayerActive()
		SendInput, {Blind}{F3}
	else
		SendInput, {Blind}3
return

$*4::
	if IsSecondLayerActive()
		SendInput, {Blind}{F4}
	else
		SendInput, {Blind}4
return

$*5::
	if IsSecondLayerActive()
		SendInput, {Blind}{F5}
	else
		SendInput, {Blind}5
return

$*6::
	if IsSecondLayerActive()
		SendInput, {Blind}{F6}
	else
		SendInput, {Blind}6
return

$*7::
	if IsSecondLayerActive()
		SendInput, {Blind}{F7}
	else
		SendInput, {Blind}7
return

$*8::
	if IsSecondLayerActive()
		SendInput, {Blind}{F8}
	else
		SendInput, {Blind}8
return

$*9::
	if IsSecondLayerActive()
		SendInput, {Blind}{F9}
	else
		SendInput, {Blind}9
return

$*0::
	if IsSecondLayerActive()
		SendInput, {Blind}{F10}
	else
		SendInput, {Blind}0
return

$*-::
	if IsSecondLayerActive()
		SendInput, {Blind}{F11}
	else
		SendInput, {Blind}-
return

$*=::
	if IsSecondLayerActive()
		SendInput, {Blind}{F12}
	else
		SendInput, {Blind}=
return


$*CapsLock::
	if IsSecondLayerActive()
	{
		DeactivateSecondLayer()
		HideIndicator()
	}
   
	else
	{
		ActivateSecondLayer()
		ShowIndicator()
	}
		
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Layer functions


IsSecondLayerActive()
{
	; If caps lock is on
	return GetKeyState("CapsLock", "T") = 1
}

DeactivateSecondLayer()
{
	SetCapsLockState, off
}

ActivateSecondLayer()
{
	SetCapsLockState, on
}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GUI


ShowIndicator()
{
	Gui, LayerGui:New, AlwaysOnTop -Caption 
	Gui, Color, EEAA99
	Gui +LastFound  ; Make the GUI window the last found window for use by the line below.
	;WinSet, TransColor, EEAA99
	Gui, Add, Text,, Layer 2 active
	Gui, Show, % "x" A_ScreenWidth - 160 " yCenter NoActivate"
}

HideIndicator()
{
	Gui, LayerGui:Hide
}