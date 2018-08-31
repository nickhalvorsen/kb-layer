#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force

SetKeyDelay, -1


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Left (n)

$n::
	if IsCapsLockOn()
		SendInput, {Left}
	else
		SendInput, n
return

$+n::
	if IsCapsLockOn() {
		Sendinput, {Shift down}{Left down}
		keywait, Left
		Sendinput, {Left up}{Shift up}
	}
	else {
		Sendinput, {Shift down}{n down}
		keywait, n
		Sendinput, {n up}{Shift up}
	}
return

$^n::
	if IsCapsLockOn() {
		Sendinput, {Ctrl down}{Left down}
		keywait, Left
		Sendinput, {Left up}{Ctrl up}
	}
	else {
		Sendinput, {Ctrl down}{n down}
		keywait, n
		Sendinput, {n up}{Ctrl up}
	}
return

$^+n::
	if IsCapsLockOn() {
		Sendinput, {Shift down}{Ctrl down}{Left down}
		keywait, Left
		Sendinput, {Left up}{Ctrl up}{Shift up}
	}
	else {
		Sendinput, {Shift down}{Ctrl down}{n down}
		keywait, n
		Sendinput, {n up}{Ctrl up}{Shift up}
	}
return




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Down (e)

$e::
	if IsCapsLockOn()
		SendInput, {Down}
	else
		SendInput, e
return

$+e::
	if IsCapsLockOn() {
		Sendinput, {Shift down}{Down down}
		keywait, Down
		Sendinput, {Down up}{Shift up}
	}
	else {
		Sendinput, {Shift down}{e down}
		keywait, e
		Sendinput, {e up}{Shift up}
	}
return

$^e::
	if IsCapsLockOn() {
		Sendinput, {Ctrl down}{Down down}
		keywait, Down
		Sendinput, {Down up}{Ctrl up}
	}
	else {
		Sendinput, {Ctrl down}{e down}
		keywait, e
		Sendinput, {e up}{Ctrl up}
	}
return

$^+e::
	if IsCapsLockOn() {
		Sendinput, {Shift down}{Ctrl down}{Down down}
		keywait, Down
		Sendinput, {Down up}{Ctrl up}{Shift up}
	}
	else {
		Sendinput, {Shift down}{Ctrl down}{e down}
		keywait, e
		Sendinput, {e up}{Ctrl up}{Shift up}
	}
return



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Right (i)

$i::
	if IsCapsLockOn()
		SendInput, {Right}
	else
		SendInput, i
return

$+i::
	if IsCapsLockOn() {
		Sendinput, {Shift down}{Right down}
		keywait, Right
		Sendinput, {Right up}{Shift up}
	}
	else {
		Sendinput, {Shift down}{i down}
		keywait, i
		Sendinput, {i up}{Shift up}
	}
return

$^i::
	if IsCapsLockOn() {
		Sendinput, {Ctrl down}{Right down}
		keywait, Right
		Sendinput, {Right up}{Ctrl up}
	}
	else {
		Sendinput, {Ctrl down}{i down}
		keywait, i
		Sendinput, {i up}{Ctrl up}
	}
return

$^+i::
	if IsCapsLockOn() {
		Sendinput, {Shift down}{Ctrl down}{Right down}
		keywait, Right
		Sendinput, {Right up}{Ctrl up}{Shift up}
	}
	else {
		Sendinput, {Shift down}{Ctrl down}{i down}
		keywait, i
		Sendinput, {i up}{Ctrl up}{Shift up}
	}
return




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Up (u)

$u::
	if IsCapsLockOn()
		SendInput, {Up}
	else
		SendInput, u
return

$+u::
	if IsCapsLockOn() {
		Sendinput, {Shift down}{Up down}
		keywait, Up
		Sendinput, {Up up}{Shift up}
	}
	else {
		Sendinput, {Shift down}{u down}
		keywait, u
		Sendinput, {u up}{Shift up}
	}
return


$^u::
	if IsCapsLockOn() {
		Sendinput, {Ctrl down}{Up down}
		keywait, Up
		Sendinput, {Up up}{Ctrl up}
	}
	else {
		Sendinput, {Ctrl down}{u down}
		keywait, u
		Sendinput, {u up}{Ctrl up}
	}
return


$^+u::
	if IsCapsLockOn() {
		Sendinput, {Shift down}{Ctrl down}{Up down}
		keywait, Up
		Sendinput, {Up up}{Ctrl up}{Shift up}
	}
	else {
		Sendinput, {Shift down}{Ctrl down}{u down}
		keywait, u
		Sendinput, {u up}{Ctrl up}{Shift up}
	}
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Home (l)

$l::
	if IsCapsLockOn()
		SendInput, {Home}
	else
		SendInput, l
return

$+l::
	if IsCapsLockOn() {
		Sendinput, {Shift down}{Home down}
		keywait, Home
		Sendinput, {Home up}{Shift up}
	}
	else {
		Sendinput, {Shift down}{l down}
		keywait, l
		Sendinput, {l up}{Shift up}
	}
return


$^l::
	if IsCapsLockOn() {
		Sendinput, {Ctrl down}{Home down}
		keywait, Home
		Sendinput, {Home up}{Ctrl up}
	}
	else {
		Sendinput, {Ctrl down}{l down}
		keywait, l
		Sendinput, {l up}{Ctrl up}
	}
return

$^+l::
	if IsCapsLockOn() {
		Sendinput, {Shift down}{Ctrl down}{Home down}
		keywait, Home
		Sendinput, {Home up}{Ctrl up}{Shift up}
	}
	else {
		Sendinput, {Shift down}{Ctrl down}{l down}
		keywait, l
		Sendinput, {l up}{Ctrl up}{Shift up}
	}
return



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; End (y)

$y::
	if IsCapsLockOn()
		SendInput, {End}
	else
		SendInput, y
return

$+y::
	if IsCapsLockOn() {
		Sendinput, {Shift down}{End down}
		keywait, End
		Sendinput, {End up}{Shift up}
	}
	else {
		Sendinput, {Shift down}{y down}
		keywait, y
		Sendinput, {y up}{Shift up}
	}
return

$^y::
	if IsCapsLockOn() {
		Sendinput, {Ctrl down}{End down}
		keywait, End
		Sendinput, {End up}{Ctrl up}
	}
	else {
		Sendinput, {Ctrl down}{y down}
		keywait, y
		Sendinput, {y up}{Ctrl up}
	}
return

$^+y::
	if IsCapsLockOn() {
		Sendinput, {Shift down}{Ctrl down}{End down}
		keywait, End
		Sendinput, {End up}{Ctrl up}{Shift up}
	}
	else {
		Sendinput, {Shift down}{Ctrl down}{y down}
		keywait, y
		Sendinput, {y up}{Ctrl up}{Shift up}
	}
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Delete (;)

$;::
	if IsCapsLockOn()
		SendInput, {Delete}
	else
		SendInput, `;
return

$+;::
	if IsCapsLockOn() {
		Sendinput, {Shift down}{Delete down}
		keywait, Delete
		Sendinput, {Delete up}{Shift up}
	}
	else {
		Sendinput, {Shift down}{`; down}
		keywait, `;
		Sendinput, {`; up}{Shift up}
	}
return

$^;::
	if IsCapsLockOn() {
		Sendinput, {Ctrl down}{Delete down}
		keywait, Delete
		Sendinput, {Delete up}{Ctrl up}
	}
	else {
		Sendinput, {Ctrl down}{`; down}
		keywait, `;
		Sendinput, {`; up}{Ctrl up}
	}
return

$^+;::
	if IsCapsLockOn() {
		Sendinput, {Shift down}{Ctrl down}{Delete down}
		keywait, Delete
		Sendinput, {Delete up}{Ctrl up}{Shift up}
	}
	else {
		Sendinput, {Shift down}{Ctrl down}{`; down}
		keywait, `;
		Sendinput, {`; up}{Ctrl up}{Shift up}
	}
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Backspace (o)

$o::
	if IsCapsLockOn()
		SendInput, {Backspace}
	else
		SendInput, o
return

$+o::
	if IsCapsLockOn() {
		Sendinput, {Shift down}{Backspace down}
		keywait, Backspace
		Sendinput, {Backspace up}{Shift up}
	}
	else {
		Sendinput, {Shift down}{o down}
		keywait, o
		Sendinput, {o up}{Shift up}
	}
return

$^o::
	if IsCapsLockOn() {
		Sendinput, {Ctrl down}{Backspace down}
		keywait, Backspace
		Sendinput, {Backspace up}{Ctrl up}
	}
	else {
		Sendinput, {Ctrl down}{o down}
		keywait, o
		Sendinput, {o up}{Ctrl up}
	}
return

$^+o::
	if IsCapsLockOn() {
		Sendinput, {Shift down}{Ctrl down}{Backspace down}
		keywait, Backspace
		Sendinput, {Backspace up}{Ctrl up}{Shift up}
	}
	else {
		Sendinput, {Shift down}{Ctrl down}{o down}
		keywait, o
		Sendinput, {o up}{Ctrl up}{Shift up}
	}
return





$1::
	if IsCapsLockOn()
		SendInput, {F1}
	else
		SendInput, 1
return

$2::
	if IsCapsLockOn()
		SendInput, {F2}
	else
		SendInput, 2
return

$3::
	if IsCapsLockOn()
		SendInput, {F3}
	else
		SendInput, 3
return

$4::
	if IsCapsLockOn()
		SendInput, {F4}
	else
		SendInput, 4
return

$5::
	if IsCapsLockOn()
		SendInput, {F5}
	else
		SendInput, 5
return

$6::
	if IsCapsLockOn()
		SendInput, {F6}
	else
		SendInput, 6
return

$7::
	if IsCapsLockOn()
		SendInput, {F7}
	else
		SendInput, 7
return

$8::
	if IsCapsLockOn()
		SendInput, {F8}
	else
		SendInput, 8
return

$9::
	if IsCapsLockOn()
		SendInput, {F9}
	else
		SendInput, 9
return

$0::
	if IsCapsLockOn()
		SendInput, {F10}
	else
		SendInput, 0
return

$-::
	if IsCapsLockOn()
		SendInput, {F11}
	else
		SendInput, -
return

$=::
	if IsCapsLockOn()
		SendInput, {F12}
	else
		SendInput, =
return



$CapsLock::
	if IsCapsLockOn()
	{
		SetCapsLockState, off
		HideIndicator()
	}
   
	else
	{
		SetCapsLockState, on
		ShowIndicator()
	}
		
return



IsCapsLockOn()
{
	return GetKeyState("CapsLock", "T") = 1
}


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