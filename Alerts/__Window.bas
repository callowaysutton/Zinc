': This program was generated by
': InForm - GUI system for QB64 - Beta version 3
': Fellippe Heitor, 2016 - fellippe@qb64.org - @fellippeheitor
'-----------------------------------------------------------

': Controls' IDs: ------------------------------------------------------------------
DIM SHARED __Window AS LONG
DIM SHARED SaveButton AS LONG
DIM SHARED No AS LONG
DIM SHARED Label1 AS LONG

': External modules: ---------------------------------------------------------------
'$INCLUDE:'InForm\InForm.ui'
'$INCLUDE:'InForm\xp.uitheme'
'$INCLUDE:'__Window.frm'

': Event procedures: ---------------------------------------------------------------
SUB __UI_BeforeInit

END SUB

SUB __UI_OnLoad

END SUB

SUB __UI_BeforeUpdateDisplay

END SUB

SUB __UI_BeforeUnload

END SUB

SUB __UI_Click (id AS LONG)
SELECT CASE id
    CASE __Window

    CASE SaveButton
run "save.bat"
    CASE No
        STOP
    CASE Label1

END SELECT
END SUB

SUB __UI_MouseEnter (id AS LONG)
SELECT CASE id
    CASE __Window

    CASE SaveButton

    CASE No

    CASE Label1

END SELECT
END SUB

SUB __UI_MouseLeave (id AS LONG)
SELECT CASE id
    CASE __Window

    CASE SaveButton

    CASE No

    CASE Label1

END SELECT
END SUB

SUB __UI_FocusIn (id AS LONG)
SELECT CASE id
    CASE SaveButton

    CASE No

END SELECT
END SUB

SUB __UI_FocusOut (id AS LONG)
SELECT CASE id
    CASE SaveButton

    CASE No

END SELECT
END SUB

SUB __UI_MouseDown (id AS LONG)
SELECT CASE id
    CASE __Window

    CASE SaveButton

    CASE No

    CASE Label1

END SELECT
END SUB

SUB __UI_MouseUp (id AS LONG)
SELECT CASE id
    CASE __Window

    CASE SaveButton

    CASE No

    CASE Label1

END SELECT
END SUB

SUB __UI_KeyPress (id AS LONG)
SELECT CASE id
    CASE SaveButton

    CASE No

END SELECT
END SUB

SUB __UI_TextChanged (id AS LONG)
SELECT CASE id
END SELECT
END SUB

SUB __UI_ValueChanged (id AS LONG)
SELECT CASE id
END SELECT
END SUB
