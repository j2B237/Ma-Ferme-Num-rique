#cs ----------------------------------------------------------------------------

Main manager of the GUI

@project        : ags-Ma Ferme Numerique - M.F.N
@version        : v1.0.0
@author         : j2b <yossep237@gmail.com
@AGS framework  : v1.0.0
@AutoIt version : v3.3.14.5

This program contains the app_start() method which is only called with the main
entry program. This method is designed to create the graphical user interface
(GUI) and manage all user interactions and events.

#ce ----------------------------------------------------------------------------


#include-once


#include "./views/View_banner.au3"
#include "./views/View_home.au3"
;#include "./views/View_navbar.au3"
;#include "./views/View_footer.au3"

Func App_Start()
   Global $main_GUI = GUICreate($APP_NAME, $APP_WIDTH, $APP_HEIGHT - 70, 0, 10)

   ;By default all elements of those views are visible.
   _GUI_Init_Banner()
   _GUI_Init_View_Home()

   ;By Default all elements of those views are hidden

   ; Set configuration application : icon, background color
	_GUI_Configuration()

   ;Show Home view on startup
   _GUI_ShowHide_View_Home($GUI_SHOW)
	GUISetState(@SW_SHOW)

	; Handle all user interactions and events
	_GUI_HandleEvents()

	GUIDelete()
	Exit

EndFunc



;===============================================================================
; Handle all events application
;
; @param void
; @return void
;===============================================================================
Func _GUI_HandleEvents()

   Local $msg
   While 1

	 $msg = GUIGetMsg()
	 Switch $msg
		 ; Trigger on close dialog box
		 Case $GUI_EVENT_CLOSE
			 ExitLoop
	 EndSwitch

	 _GUI_HandleEvents_View_Banner($msg)
	 _GUI_HandleEvents_View_Home($msg)
   WEnd
EndFunc

;===============================================================================
; Use it to configure the main GUI (set icon, background color...)
;
; @param void
; @return void
;===============================================================================
Func _GUI_Configuration()
	GUISetIcon($APP_GUI_ICON) ; set icon
	GUISetBkColor($APP_GUI_BACKGROUND_COLOR) ; set background color
 EndFunc


;===============================================================================
; Hide elements for all views handle in methods _GUI_ShowHide_View_xxx
;
; @param void
; @return void
;===============================================================================
Func _GUI_Hide_all_view()
   ;Views below are always Hidden when one view is displaying
	_GUI_ShowHide_View_Home($GUI_HIDE)
EndFunc
