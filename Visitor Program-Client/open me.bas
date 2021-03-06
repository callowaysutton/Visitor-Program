DECLARE LIBRARY
  Function WinExec (lpCmdLine AS STRING, BYVAL nCmdShow AS LONG)
END DECLARE

Winmode% = 1

'0 = Hides the window and activates another window.
'1 = Activates and displays a normal sized window. 
'2 = Activates the window and minimized to taskbar.
'3 = Activates the window and displays it as a maximized window.

'NOTE: If you do 0 (hide), you'll have to Kill the process using your TaskManager!!!

'=== Open notepad and load samples.txt in the QB64 directory

Filename$ = "notepad.exe samples.txt" + CHR$(0)

'NOTE: EXE filename must be a NULL terminates..CHR$(0)...

Result = WinExec(Filename$, Winmode%)

'=== Show results ...

SELECT CASE Result
   CASE 0: PRINT "System out of memory or resources."
   CASE 2: PRINT "The specified file was not found."
   CASE 3: PRINT "The specified path was not found."
   CASE 11: PRINT "The file is invalid (non-Win32 .EXE or error in .EXE image)."
   CASE IS > 31: PRINT "Program opened normally."
   CASE ELSE: PRINT "Unknown error: "; Result
END SELECT
END  