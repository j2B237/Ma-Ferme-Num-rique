#cs ----------------------------------------------------------------------------

Handler of the 'Footer' GUI elements. These elements are always display in each
view, so we don't need to add '_GUI_ShowHide_Footer' method.

@project        : ags-Ma Ferme Numerique - M.F.N
@version        : v1.0.0
@author         : j2b <yossep237@gmail.com
@AGS framework  : v1.0.0
@AutoIt version : v3.3.14.5

#ce ----------------------------------------------------------------------------


#include-once


;===============================================================================
; Create footer element
;
; @param void
; @return void
;===============================================================================
Func _GUI_Init_Footer()
	GUISetFont(8, 400, 0, "Segoe UI")
	Global $label_copyright = GUICtrlCreateLabel($APP_COPYRIGHT, 5, $APP_HEIGHT - 38)
	Global $label_version_application = GUICtrlCreateLabel("v" & $APP_VERSION, $APP_WIDTH - StringLen("v" & $APP_VERSION) * 5, $APP_HEIGHT - 38)
	Global $img_trait = GUICtrlCreatePic($APP_FOLDER_ASSETS & "/images/line.jpg", 0, $APP_HEIGHT - 50, $APP_WIDTH, 2)
	GUISetFont(10, 400, 0, "Segoe UI")
EndFunc
