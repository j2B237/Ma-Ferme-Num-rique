#cs ----------------------------------------------------------------------------

Main manager of the Banner view

@project        : ags-Ma Ferme Numerique - M.F.N
@version        : v1.0.0
@author         : j2b <yossep237@gmail.com
@AGS framework  : v1.0.0
@AutoIt version : v3.3.14.5

   Functions to manage the bannner Menu events
   _GUI_Init_Banner()
   _GUI_ShowHide_View_Banner($action)
   _GUI_HandleEvents_View_Banner($msg)

#ce ----------------------------------------------------------------------------



#include-once


;;========================================
;   Handler of the banner view
;   @param = void
;   @return = void
;;========================================

func _GUI_Init_Banner()

   Global $banner_Group = GUICtrlCreateGroup("", 5, 0, $APP_WIDTH - 10, 90, BitOR($GUI_SS_DEFAULT_GROUP,$WS_CLIPSIBLINGS), $WS_EX_TRANSPARENT)
   GUICtrlSetFont(-1, 14, 800, 0, "Calibri")
   GUICtrlSetBkColor(-1, 0xFFFFFF)

   Global $banner_Logo = GUICtrlCreatePic($APP_FOLDER_ASSETS & "/images/logo_Consultant.jpg", 16, 16, 64, 64)
   GUICtrlSetTip(-1, "lFN : la Ferme Numérique est un logiciel gratuit de gestion de ferme")
   GUICtrlSetCursor (-1, 0)

   Global $banner_Title = GUICtrlCreateLabel( _
									   "Logiciel de gestion de Ferme pour auto entrepreneur et micro entrepreneur", _
									   120, 16, 700, 46, BitOR($SS_CENTER,$SS_CENTERIMAGE,$WS_CLIPSIBLINGS))
   GUICtrlSetFont(-1, 16, 800, 0, "Calibri")
   GUICtrlSetColor(-1, 0xFFFFFF)
   GUICtrlSetBkColor(-1, 0x008000)
   GUICtrlSetCursor (-1, 5)

   Global $banner_BtnAbout = GUICtrlCreateLabel("Qui sommes-nous ?", 850, 16, 122, 22, $SS_CENTER)
   GUICtrlSetFont(-1, 10, 400, 4, "Microsoft Sans Serif")
   GUICtrlSetColor(-1, 0xFFFFFF)
   GUICtrlSetBkColor(-1, 0x008000)
   GUICtrlSetTip(-1, "A propos de l'élévage")
   GUICtrlSetCursor (-1, 0)


   Global $banner_BtnSupport = GUICtrlCreateLabel("Support", 1025, 16, 122, 22, $SS_CENTER)
   GUICtrlSetFont(-1, 11, 400, 4, "Microsoft Sans Serif")
   GUICtrlSetColor(-1, 0xFFFFFF)
   GUICtrlSetBkColor(-1, 0x008000)
   GUICtrlSetTip(-1, "Support du logiciel LFN")
   GUICtrlSetCursor (-1, 0)

   Global $banner_BtnConnect = GUICtrlCreateLabel("Connexion", 1200, 16, 122, 22, $SS_CENTER)
   GUICtrlSetFont(-1, 11, 400, 0, "Microsoft Sans Serif")
   GUICtrlSetColor(-1, 0x00FF00)
   GUICtrlSetBkColor(-1, 0x008000)
   GUICtrlSetTip(-1, "Connexion au logiciel")
   GUICtrlSetCursor (-1, 0)

EndFunc


;;===============================================
; Handler for display elements of banner view
; By default Banner is always displayed
;================================================

Func _GUI_ShowHide_View_Banner($action)
   ; No instructions
EndFunc



;;=======================================
; Handler for events in banner view
; @param = $msg ( control ID )
; @return = void
;;========================================

Func _GUI_HandleEvents_View_Banner($msg)

   Switch $msg

	  ;Trigger for click on Logo, takes user back to Home view
	  Case $banner_Logo
		 _GUI_ShowHide_View_Home($GUI_SHOW)

	  ;Trigger for click on BtnAbout, takes user to About view
	  Case $banner_BtnAbout
		 ;_GUI_ShowHide_View_About($GUI_SHOW)

	  ;Trigger for click on BtnSupport, takes user to support view
	  Case $banner_BtnConnect
		 ;_GUI_ShowHide_View_Connexion($GUI_SHOW)

   EndSwitch


EndFunc



