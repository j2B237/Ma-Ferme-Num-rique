#cs ----------------------------------------------------------------------------

Main manager of the Connexion view

@project        : ags-Ma Ferme Numerique - M.F.N
@version        : v1.0.0
@author         : j2b <yossep237@gmail.com
@AGS framework  : v1.0.0
@AutoIt version : v3.3.14.5

   Functions to manage the connexion view events
   _GUI_Init_View_Connexion()
   _GUI_ShowHide_View_Connexion($action)
   _GUI_HandleEvents_View_Connexion($msg)

#ce ----------------------------------------------------------------------------


#include-once


;;==============================================
;Handler for the creation of connexion View
;@params = void
;@return = void
;;=============================================

Func _GUI_Init_View_Connexion()

   ;Global $Group_From = GUICtrlCreateGroup("", -99, -99, 1, 1)
   Global $Group3_Form = GUICtrlCreateGroup("Deja menbre de La Ferme Numérique ?", 96, 168, 401, 225)
   GUICtrlSetFont(-1, 10, 800, 0, "Calibri")
   GUICtrlSetColor(-1, 0xFFFFFF)
   GUICtrlSetBkColor(-1, 0x008000)


   Global $Label_Email_Form = GUICtrlCreateLabel("Email ", 112, 192, 36, 19, $SS_CENTER)
   GUICtrlSetColor(-1, 0x000000)
   GUICtrlSetBkColor(-1, 0xE3E3E3)

   Global $Input_Email_Form = GUICtrlCreateInput("", 136, 216, 266, 23)
   GUICtrlSetColor(-1, 0x000000)
   GUICtrlSetCursor (-1, 5)

   Global $Label_Passwd_Form = GUICtrlCreateLabel("Mot de passe", 112, 256, 77, 19, $SS_CENTER)
   GUICtrlSetColor(-1, 0x000000)
   GUICtrlSetBkColor(-1, 0xE3E3E3)

   Global $Input_Passwd_Form = GUICtrlCreateInput("", 136, 280, 266, 23)
   GUICtrlSetColor(-1, 0x000000)
   GUICtrlSetCursor (-1, 2)

   Global $Btn_Connexion_Form = GUICtrlCreateLabel("Connexion", 240, 320, 80, 22, BitOR($SS_CENTER,$WS_BORDER))
   GUICtrlSetFont(-1, 12, 800, 0, "Calibri")
   GUICtrlSetCursor (-1, 0)

   Global $Btn_passwdForget_Form = GUICtrlCreateLabel("Mot de passe oublié ?", 136, 352, 124, 19, $SS_CENTER)
   GUICtrlSetFont(-1, 10, 400, 4, "Calibri")
   GUICtrlSetColor(-1, 0x008000)
   GUICtrlSetBkColor(-1, 0xFFFFFF)
   GUICtrlSetCursor (-1, 0)

   Global $Label_Open_Account = GUICtrlCreateLabel("Ouvrez un compte ?", 288, 352, 111, 19, $SS_CENTER)
   GUICtrlSetFont(-1, 10, 400, 4, "Calibri")
   GUICtrlSetColor(-1, 0x008000)
   GUICtrlSetBkColor(-1, 0xFFFFFF)
   GUICtrlSetCursor (-1, 0)

EndFunc


;;======================================================
;Handler for display elements of connexion view
;@params = $action ($GUI_SHOW, $GUI_HIDE)
;@return = void
;;======================================================


Func _GUI_ShowHide_View_Connexion($action)

   Switch $action

	  ;;Trigger to display elements of the view
	  Case $GUI_SHOW
		 _GUI_Hide_all_View()
		 GUICtrlSetState($Group3_Form, $GUI_SHOW)
		 GUICtrlSetState($Label_Email_Form, $GUI_SHOW)
		 GUICtrlSetState($Input_Email_Form, $GUI_SHOW)
		 GUICtrlSetState($Label_Passwd_Form, $GUI_SHOW)
		 GUICtrlSetState($Input_Passwd_Form, $GUI_SHOW)
		 GUICtrlSetState($Btn_Connexion_Form, $GUI_SHOW)
		 GUICtrlSetState($Btn_passwdForget_Form, $GUI_SHOW)
		 GUICtrlSetState($Label_Open_Account, $GUI_SHOW)

	  ;;Trigger to Hide elements of the view
	  Case $GUI_HIDE
		 GUICtrlSetState($Group3_Form, $GUI_HIDE)
		 GUICtrlSetState($Label_Email_Form, $GUI_HIDE)
		 GUICtrlSetState($Input_Email_Form, $GUI_HIDE)
		 GUICtrlSetState($Label_Passwd_Form, $GUI_HIDE)
		 GUICtrlSetState($Input_Passwd_Form, $GUI_HIDE)
		 GUICtrlSetState($Btn_Connexion_Form, $GUI_HIDE)
		 GUICtrlSetState($Btn_passwdForget_Form, $GUI_HIDE)
		 GUICtrlSetState($Label_Open_Account, $GUI_HIDE)

   EndSwitch

EndFunc


;;===================================================
;Handler for the events of view connexion
;@params = $msg (Control ID)
;@return = void
;
;;==================================================

Func _GUI_HandleEvents_View_Connexion($msg)


EndFunc
