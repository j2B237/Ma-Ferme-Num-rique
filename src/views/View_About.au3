#cs ----------------------------------------------------------------------------

Main manager of the About us view

@project        : ags-Ma Ferme Numerique - M.F.N
@version        : v1.0.0
@author         : j2b <yossep237@gmail.com
@AGS framework  : v1.0.0
@AutoIt version : v3.3.14.5

   Functions to manage the About Us view events
   _GUI_Init_View_About()
   _GUI_ShowHide_View_About($action)
   _GUI_HandleEvents_View_About($msg)

#ce ----------------------------------------------------------------------------


#include-once



;;=====================================================
; Handler for the creation of the About view
; @params = void
; @return = void
;;====================================================


Func _GUI_Init_View_About()

   GUISetFont(20, 800, 0, "Arial Narrow")
   Global $label_View_About = GUICtrlCreateLabel(" ABOUT US PAGE ", 550, 120, 200, 50)
   GUICtrlSetColor($label_View_About, $APP_GUI_TITLE_COLOR)
   GUICtrlSetBkColor($label_View_About, $GUI_BKCOLOR_TRANSPARENT)

   Global $oIE = _IECreateEmbedded()
   Global $Embedded_View_Home = GUICtrlCreateObj($oIE, 100, 150, 950, 450)

   _IENavigate($oIE, "http://www.cuniculture.info/")
   _IEAction($oIE, "stop")

EndFunc



;;======================================================
; Handler for display elements of About view
;
;@params = $action ($GUI_SHOW, $GUI_HIDE)
;@return = void
;;======================================================


Func _GUI_ShowHide_View_About($action)

   Switch $action

	  ;;Show all elements of About view
	  Case $GUI_SHOW
		 _GUI_Hide_all_View()
		 GUICtrlSetState($label_View_About, $GUI_SHOW)
		 GUICtrlSetState($Embedded_View_Home, $GUI_SHOW)
	  Case $GUI_HIDE
		 GUICtrlSetState($label_View_About, $GUI_HIDE)
		 GUICtrlSetState($Embedded_View_Home, $GUI_HIDE)
   EndSwitch


EndFunc



;;===========================================================
;Handler for events in view About
;@params = $msg (Control ID)
;@return = void
;
;;==========================================================


Func _GUI_HandleEvents_View_About($msg)

   ;;Insert code here
EndFunc


