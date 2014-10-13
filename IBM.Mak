
# MAKE file for IBM.MAK     Release 5

# Revised:  1995-06-17

# Copyright ¸ 1987-1995  Prominare Inc.

# MAKE file created by Prominare Builder  Release 5

# Macro definitions

CC=ICC
RC=Rc
# C_SWDEBUG=-G4 -O- -Oi- -Op- -Os- -Ti
# C_SW=-G4 -O+ -c
C_SW=-G4 -c
# L_SWDEBUG=/B" /pmtype:pm /DE"
L_SW=/B" /pmtype:pm"
RC_SW=-r


Print.Exe: AppDefs.Obj DrawPage.Obj FilePrn.Obj\
        Fonts.Obj PageDlg.Obj PrevDlg.Obj\
        Print.Obj Print.Res PrnAPI.Obj\
        PrnWnd.Obj Support.Obj ToolBar.Obj print.res
     icc.exe @<<
  $(L_SW)
  /Feprint.exe
  .\Print.obj
  .\AppDefs.obj
  .\DrawPage.obj
  .\FilePrn.obj
  .\Fonts.obj
  .\PageDlg.obj
  .\PrevDlg.obj
  .\PrnAPI.obj
  .\PrnWnd.obj
  .\Support.obj
  .\ToolBar.obj
  IBM.def
<<
 rc print.res print.exe

AppDefs.Obj: AppDefs.C
 $(CC) $(C_SW) -Fo$*.Obj AppDefs.C

DrawPage.Obj: DrawPage.C
 $(CC) $(C_SW) -Fo$*.Obj DrawPage.C

FilePrn.Obj: FilePrn.C
 $(CC) $(C_SW) -Fo$*.Obj FilePrn.C

Fonts.Obj: Fonts.C
 $(CC) $(C_SW) -Fo$*.Obj Fonts.C

PageDlg.Obj: PageDlg.C
 $(CC) $(C_SW) -Fo$*.Obj PageDlg.C

PrevDlg.Obj: PrevDlg.C
 $(CC) $(C_SW) -Fo$*.Obj PrevDlg.C

Print.Obj: Print.C
 $(CC) $(C_SW) -Fo$*.Obj Print.C

Print.Res: Print.Rc
 $(RC) $(RC_SW) Print.Rc $*.Res

PrnAPI.Obj: PrnAPI.C
 $(CC) $(C_SW) -Fo$*.Obj PrnAPI.C

PrnWnd.Obj: PrnWnd.C
 $(CC) $(C_SW) -Fo$*.Obj PrnWnd.C

Support.Obj: Support.C
 $(CC) $(C_SW) -Fo$*.Obj Support.C

ToolBar.Obj: ToolBar.C
 $(CC) $(C_SW) -Fo$*.Obj ToolBar.C

