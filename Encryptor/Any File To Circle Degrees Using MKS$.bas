'
' *** 360 Degrees in a Circle / 256 ASCII Characters = 1.40625 Degrees per ASC Value ***
'
DEFINT A-Z
VIEW PRINT
ON ERROR GOTO Oops
CLS
LOCATE 1, 4, 1
COLOR 9
PRINT "ANY FILE TO CIRCLE DEGREES USING MKS$ & CIRCLE DEGREES BACK TO ANY FILE";
'
Infile:
'
WhereAmeI = 0
VIEW PRINT 3 TO 24
COLOR 14
CLS
LOCATE 3, 2, 1
COLOR 2
PRINT "EXISTING File [d:][\path\]filename.ext: ";
GOSUB Prompt1
LINE INPUT ; InputFile$
InputFile$ = LTRIM$(RTRIM$(InputFile$))
IF InputFile$ = "" THEN
    VIEW PRINT
    CLS
    SYSTEM
ELSEIF _FILEEXISTS(InputFile$) = 0 THEN
    GOSUB DoesFileExist
    GOTO Infile
END IF
'
OutFile:
'
WhereAmeI = 1
VIEW PRINT 6 TO 24
COLOR 14
CLS
LOCATE 6, 2, 1
COLOR 2
PRINT "NEW File [d:][\path\]filename.ext: ";
GOSUB Prompt2
LINE INPUT ; OutputFile$
OutputFile$ = LTRIM$(RTRIM$(OutputFile$))
IF OutputFile$ = "" THEN
    GOTO Infile
ELSEIF _FILEEXISTS(OutputFile$) THEN
    GOSUB DoesFileExist
    GOTO OutFile
END IF
'
' *** Action: File2Degrees OR Degrees2File
'
VIEW PRINT 9 TO 24
CLS
LOCATE 9, 2
PRINT "<F>";
COLOR 2
PRINT "ile to Degrees OR ";
COLOR 14
PRINT "<D>";
COLOR 2
PRINT "egrees to File: ";
GOSUB Prompt2
DO
    _LIMIT 25
    Which$ = UCASE$(INKEY$)
    IF LEN(Which$) THEN
        IF Which$ = CHR$(13) THEN
            GOTO OutFile
        ELSEIF INSTR("FD", Which$) THEN
            EXIT DO
        END IF
    END IF
LOOP
PRINT "<"; Which$; ">";

'
VIEW PRINT 12 TO 24
CLS
IF Which$ = "D" THEN
    GOTO MakeOriginal
END IF
'
' **** Make A Degrees File ****
'
InputFile = FREEFILE
OPEN "B", InputFile, InputFile$
GetData$ = STRING$(LOF(InputFile), 32)
GET InputFile, , GetData$
CLOSE
'
OutputFile = FREEFILE
OPEN "B", OutputFile, OutputFile$
FOR X& = 1 TO LEN(GetData$)
    ASCII! = ASC(MID$(GetData$, X&, 1))
    Degrees! = ASCII! * 1.40625
    Degree$ = MKS$(Degrees!)
    PUT OutputFile, , Degree$
    GOSUB ShowProgress
NEXT X&
CLOSE
RUN
'
MakeOriginal:
'
InputFile = FREEFILE
OPEN "B", InputFile, InputFile$
GetData$ = STRING$(LOF(InputFile), 32)
GET InputFile, , GetData$
CLOSE
OutputFile = FREEFILE
OPEN "B", OutputFile, OutputFile$
FOR X& = 1 TO LEN(GetData$) STEP 4
    Degree$ = MID$(GetData$, X&, 4)
    Degrees! = CVS(Degree$)
    ASCII! = Degrees! / 1.40625
    ASCII$ = CHR$(ASCII!)
    PUT OutputFile, , ASCII$
    GOSUB ShowProgress
NEXT X&
CLOSE
RUN
'
Oops:
'
COLOR 14
LOCATE 24, 25, 0
PRINT "Error:";
COLOR 31
PRINT ERR;
COLOR 14
PRINT "- Hit ";
COLOR 31
PRINT "<Esc>";
COLOR 14
PRINT " to Retry";
GOSUB WaitForEsc
IF _FILEEXISTS(OutputFile$) THEN
    CLOSE OutputFile
    KILL OutputFile$
END IF
RESUME OutFile
'
DoesFileExist:
'
LOCATE 24, 20, 0
COLOR 14
IF WhereAmeI = 0 THEN
    PRINT "File Does NOT exist";
ELSE
    PRINT "File ALREADY exists";
END IF
PRINT ", Hit ";
COLOR 31
PRINT "<Esc>";
COLOR 14
PRINT " to Retry";
GOSUB WaitForEsc
RETURN
'
WaitForEsc:
'
DO
    _LIMIT 25
    An$ = INKEY$
    IF LEN(An$) THEN
        IF An$ = CHR$(27) THEN
            EXIT DO
        END IF
    END IF
LOOP
RETURN
'
ShowProgress:
'
LOCATE 15, 2, 0
COLOR 14
PRINT X&;
COLOR 2
PRINT "of";
COLOR 14
PRINT LEN(GetData$);
COLOR 2
PRINT "Bytes";
RETURN
'
Prompt1:
'
SavedColumn = POS(0)
SavedRow = CSRLIN
LOCATE 24, 30
COLOR 15
PRINT "Hit ";
COLOR 30
PRINT "<Enter>";
COLOR 15
PRINT " to Quit";
LOCATE SavedRow, SavedColumn
COLOR 14
RETURN
'
Prompt2:
'
SavedColumn = POS(0)
SavedRow = CSRLIN
LOCATE 24, 27
COLOR 15
PRINT "Hit ";
COLOR 30
PRINT "<Enter>";
COLOR 15
PRINT " to Go Back Up";
LOCATE SavedRow, SavedColumn
COLOR 14
RETURN




