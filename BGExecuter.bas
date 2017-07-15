': Controls' IDs: ------------------------------------------------------------------
DIM SHARED BGExecuter AS LONG
DIM vars AS STRING
DIM tmp AS INTEGER
': External modules: ---------------------------------------------------------------
'$INCLUDE:'InForm\InForm.ui'
'$INCLUDE:'InForm\xp.uitheme'
'$INCLUDE:'BGExecuter.frm'

': Event procedures: ---------------------------------------------------------------
SUB __UI_BeforeInit

END SUB

SUB __UI_OnLoad
    DO
        OPEN "MyFile.txt" FOR INPUT AS #1
        INPUT #1, vars
        CLOSE #1
        _DELAY 0.5
        IF vars = 0 THEN
            STOP
        ELSE
            PRINT "yay"
        END IF
    LOOP

END SUB

SUB __UI_BeforeUpdateDisplay

END SUB

SUB __UI_BeforeUnload

END SUB

SUB __UI_Click (id AS LONG)
    SELECT CASE id
        CASE BGExecuter

    END SELECT
END SUB

SUB __UI_MouseEnter (id AS LONG)
    SELECT CASE id
        CASE BGExecuter

    END SELECT
END SUB

SUB __UI_MouseLeave (id AS LONG)
    SELECT CASE id
        CASE BGExecuter

    END SELECT
END SUB

SUB __UI_FocusIn (id AS LONG)
    SELECT CASE id
    END SELECT
END SUB

SUB __UI_FocusOut (id AS LONG)
    SELECT CASE id
    END SELECT
END SUB

SUB __UI_MouseDown (id AS LONG)
    SELECT CASE id
        CASE BGExecuter

    END SELECT
END SUB

SUB __UI_MouseUp (id AS LONG)
    SELECT CASE id
        CASE BGExecuter

    END SELECT
END SUB

SUB __UI_KeyPress (id AS LONG)
    SELECT CASE id
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

