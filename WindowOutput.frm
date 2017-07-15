': This form was generated by
': InForm - GUI system for QB64 - Beta version 3
': Fellippe Heitor, 2016 - fellippe@qb64.org - @fellippeheitor
'-----------------------------------------------------------
SUB __UI_LoadForm

    $RESIZE:ON
    DIM __UI_NewID AS LONG

    __UI_NewID = __UI_NewControl(__UI_Type_Form, "WindowOutput", 637, 512, 0, 0, 0)
    SetCaption __UI_NewID, "Output"
    Control(__UI_NewID).Font = SetFont("segoeui.ttf", 12, "")
    Control(__UI_NewID).CanResize = True

    __UI_NewID = __UI_NewControl(__UI_Type_Frame, "Output_Frame", 625, 447, 5, 55, 0)
    Control(__UI_NewID).HasBorder = True

    __UI_NewID = __UI_NewControl(__UI_Type_Button, "StartButton", 146, 53, 496,-9, 0)
    SetCaption __UI_NewID, "Start"
    Control(__UI_NewID).CanHaveFocus = True

    __UI_NewID = __UI_NewControl(__UI_Type_Button, "DecorationButton", 521, 58,-21,-14, 0)
    SetCaption __UI_NewID, "Output Window"
    Control(__UI_NewID).CanHaveFocus = True
    Control(__UI_NewID).Disabled = True

END SUB

SUB __UI_AssignIDs
    WindowOutput = __UI_GetID("WindowOutput")
    StartButton = __UI_GetID("StartButton")
    DecorationButton = __UI_GetID("DecorationButton")
    Output_Frame = __UI_GetID("Output_Frame")
END SUB