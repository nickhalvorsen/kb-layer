#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
Menu, Tray, Icon, %A_WorkingDir%\icon.ico
SetKeyDelay, -1

; Short press caps lock will toggle second layer on or off
; Long press/hold caps lock will toggle second layer on and off when released
CapsLockHoldThreshold := 140


#If IsSecondLayerActive()

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;; Left (n)

	$*n::
		; Avoid releasing modifiers with {Blind}
		SendInput, {Blind}{Left}
	return


	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;; Down (e)

	$*e::
		SendInput, {Blind}{Down}
	return


	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;; Right (i)

	$*i::
		SendInput, {Blind}{Right}
	return


	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;; Up (u)

	$*u::
		SendInput, {Blind}{Up}
	return


	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;; Home (l)

	$*l::
		SendInput, {Blind}{Home}
	return


	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;; End (y)

	$*y::
		SendInput, {Blind}{End}
	return


	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;; Delete (;)

	$*;::
		SendInput, {Blind}{Delete}
	return


	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;; Backspace (o)

	$*o::
		SendInput, {Blind}{Backspace}
	return

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;; FN keys (1-0,-,=)


	$*1::
		SendInput, {Blind}{F1}
	return

	$*2::
		SendInput, {Blind}{F2}
	return

	$*3::
		SendInput, {Blind}{F3}
	return

	$*4::
		SendInput, {Blind}{F4}
	return

	$*5::
		SendInput, {Blind}{F5}
	return

	$*6::
		SendInput, {Blind}{F6}
	return

	$*7::
		SendInput, {Blind}{F7}
	return

	$*8::
		SendInput, {Blind}{F8}
	return

	$*9::
		SendInput, {Blind}{F9}
	return

	$*0::
		SendInput, {Blind}{F10}
	return

	$*-::
		SendInput, {Blind}{F11}
	return

	$*=::
		SendInput, {Blind}{F12}
	return


	; Suppress unused keys on the second layer
	$q::
	$+q::
	$w::
	$+w::
	$f::
	$+f::
	$p::
	$+p::
	$g::
	$+g::
	$j::
	$+j::
	$[::
	$+[::
	$]::
	$+]::
	$\::
	$+\::
	$a::
	$+a::
	$r::
	$+r::
	$s::
	$+s::
	$t::
	$+t::
	$d::
	$+d::
	$h::
	$+h::
	$'::
	$+'::
	$z::
	$+z::
	$x::
	$+x::
	$c::
	$+c::
	$v::
	$+v::
	$b::
	$+b::
	$k::
	$+k::
	$m::
	$+m::
	$,::
	$+,::
	$.::
	$+.::
	$/::
	$+/::
	return


#If


; todo: count caps as held even below threshold if another key is pressed when it is held down 

$*CapsLock::

	pressed := A_TickCount

	if IsSecondLayerActive()
	{
		DeactivateSecondLayer()
	}
	else
	{
		ActivateSecondLayer()
	}

	; prevent key repeat when held down
	keywait, CapsLock

	heldDuration := A_TickCount - pressed

	; determine whether caps lock was pressed or held
	if (heldDuration > CapsLockHoldThreshold) {
		DeactivateSecondLayer()
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
	HideIndicator()
}

ActivateSecondLayer()
{
	SetCapsLockState, on
	ShowIndicator()
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

; WinSet, Transparent, [0-255]
; image link: http://www.keyboard-layout-editor.com/#/gists/51e66997fa1eae7e0e6e37083c2dd682

HideIndicator()
{
	Gui, LayerGui:Hide
}