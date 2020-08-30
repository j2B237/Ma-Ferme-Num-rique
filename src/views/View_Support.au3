#cs ----------------------------------------------------------------------------

Main manager of the Banner view

@project        : ags-Ma Ferme Numerique - M.F.N
@version        : v1.0.0
@author         : j2b <yossep237@gmail.com
@AGS framework  : v1.0.0
@AutoIt version : v3.3.14.5

   Functions to manage the Support view events
   _GUI_Init_View_Support()
   _GUI_ShowHide_View_Support($action)
   _GUI_HandleEvents_View_Support($msg)

#ce ----------------------------------------------------------------------------


#include-once


;;==================================================
;Handler for the creation of Support view
;@params = void
;@return = void
;;=================================================


Func _GUI_Init_View_Support()

   GUISetFont(20, 800, 0, "Arial Narrow")
   Global $label_View_Support = GUICtrlCreateLabel(" SUPPORT PAGE ", 550, 120, 200, 50)
   GUICtrlSetColor($label_View_Support, $APP_GUI_TITLE_COLOR)
   GUICtrlSetBkColor($label_View_Support, $GUI_BKCOLOR_TRANSPARENT)

EndFunc



;;================================================
;Handler for Display elements of support view
;
;@params = $action($GUI_SHOW, $GUI_HIDE)
;@return = void
;
;;===============================================

Func _GUI_ShowHide_View_Support($action)
   Switch $action

	  Case $GUI_SHOW
		 _GUI_Hide_all_View()
		 GUICtrlSetState($label_View_Support, $GUI_SHOW)
	  Case $GUI_HIDE
		 GUICtrlSetState($label_View_Support, $GUI_HIDE)

   EndSwitch

EndFunc




;;==============================================
;Handler for events of support view
;
;@params = $msg (Control ID)
;@return = void
;
;;==============================================

Func _GUI_HandleEvents_View_Support($msg)


EndFunc
