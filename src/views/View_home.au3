#cs ----------------------------------------------------------------------------

Main manager of the Home view

@project        : ags-Ma Ferme Numerique - M.F.N
@version        : v1.0.0
@author         : j2b <yossep237@gmail.com
@AGS framework  : v1.0.0
@AutoIt version : v3.3.14.5

 Functions to manage the home view
   _GUI_Init_View_Home()
   _GUI_ShowHide_View_Home($action)
   _GUI_HandleEvents_View_Home($msg)

#ce ----------------------------------------------------------------------------


#include-once


;;==================================
; Handler for View of Home page
; @params = void
; @return = void
;;==================================


Func _GUI_Init_View_Home()

   GUISetFont(20, 800, 0, "Arial Narrow")
   Global $label_View_Home = GUICtrlCreateLabel(" HOME PAGE ", 550, 250, 200, 50)
   GUICtrlSetColor($label_View_Home, $APP_GUI_TITLE_COLOR)
   GUICtrlSetBkColor($label_View_Home, $GUI_BKCOLOR_TRANSPARENT)

EndFunc



;;===========================================
; Handler for display elements of home view
; @params = $action ($GUI_SHOW, $GUI_HIDE)
; @return = void
;;============================================


Func _GUI_ShowHide_View_Home($action)

   Switch $action
	  ;;Display view when user click on Logo img
	  Case $GUI_SHOW
		 _GUI_Hide_all_View()
		 GUICtrlSetState($label_View_Home, $GUI_SHOW)

	  Case $GUI_HIDE
		 GUICtrlSetState($label_View_Home, $GUI_HIDE)

   EndSwitch

EndFunc



;;===============================================
; Handler for events in home view
; @params = $msg (Control ID)
; @return = void
;;==============================================


Func _GUI_HandleEvents_View_Home($msg)
   ;;Write instructions here
   Switch $msg

	  ;Trigger when user click on label Home page
	  Case $label_View_Home
		 _GUI_ShowHide_View_Home($GUI_SHOW)
   EndSwitch

EndFunc




