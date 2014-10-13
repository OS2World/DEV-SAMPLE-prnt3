
# MAKE file for WATCOM.MAK     Release 5

# Revised:  1995-06-17

# Copyright ¸ 1987-1995  Prominare Inc.

# MAKE file created by Prominare Builder  Release 5

# Macro definitions

CC=Wcl386
RC=Rc
C_SW=-ms -4s -od -d2 -zp4 
RC_SW=-r 


Print.Exe: AppDefs.Obj DrawPage.Obj FilePrn.Obj\
        Fonts.Obj PageDlg.Obj PrevDlg.Obj\
        Print.Obj Print.Res PrnAPI.Obj\
        PrnWnd.Obj Support.Obj ToolBar.Obj
 WLink DEBUG ALL @OS2_2x.Lnk
 rc print.res print.exe

AppDefs.Obj: AppDefs.C
 $(CC) $(C_SW) -fo=$*.Obj AppDefs.C

DrawPage.Obj: DrawPage.C
 $(CC) $(C_SW) -fo=$*.Obj DrawPage.C

FilePrn.Obj: FilePrn.C
 $(CC) $(C_SW) -fo=$*.Obj FilePrn.C

Fonts.Obj: Fonts.C
 $(CC) $(C_SW) -fo=$*.Obj Fonts.C

PageDlg.Obj: PageDlg.C
 $(CC) $(C_SW) -fo=$*.Obj PageDlg.C

PrevDlg.Obj: PrevDlg.C
 $(CC) $(C_SW) -fo=$*.Obj PrevDlg.C

Print.Obj: Print.C
 $(CC) $(C_SW) -fo=$*.Obj Print.C

Print.Res: Print.Rc
 $(RC) $(RC_SW) Print.Rc $*.Res

PrnAPI.Obj: PrnAPI.C
 $(CC) $(C_SW) -fo=$*.Obj PrnAPI.C

PrnWnd.Obj: PrnWnd.C
 $(CC) $(C_SW) -fo=$*.Obj PrnWnd.C

Support.Obj: Support.C
 $(CC) $(C_SW) -fo=$*.Obj Support.C

ToolBar.Obj: ToolBar.C
 $(CC) $(C_SW) -fo=$*.Obj ToolBar.C

