
# MAKE file for Borland.MAK     Release 5

# Revised:  1995-06-17

# Copyright ¸ 1987-1995  Prominare Inc.

# MAKE file created by Prominare Builder  Release 5

# Macro definitions

CC=BCC
RC=Rc 
C_SW=-Od -v 
RC_SW=-r 


Print.Exe: AppDefs.Obj DrawPage.Obj FilePrn.Obj\
        Fonts.Obj PageDlg.Obj PrevDlg.Obj\
        Print.Obj Print.Res PrnAPI.Obj\
        PrnWnd.Obj Support.Obj ToolBar.Obj
 TLink /v @OS2_2x.Lnk
 rc print.res print.exe

AppDefs.Obj: AppDefs.C
 $(CC) $(C_SW) -o$*.Obj AppDefs.C

DrawPage.Obj: DrawPage.C
 $(CC) $(C_SW) -o$*.Obj DrawPage.C

FilePrn.Obj: FilePrn.C
 $(CC) $(C_SW) -o$*.Obj FilePrn.C

Fonts.Obj: Fonts.C
 $(CC) $(C_SW) -o$*.Obj Fonts.C

PageDlg.Obj: PageDlg.C
 $(CC) $(C_SW) -o$*.Obj PageDlg.C

PrevDlg.Obj: PrevDlg.C
 $(CC) $(C_SW) -o$*.Obj PrevDlg.C

Print.Obj: Print.C
 $(CC) $(C_SW) -o$*.Obj Print.C

Print.Res: Print.Rc
 $(RC) $(RC_SW) Print.Rc $*.Res

PrnAPI.Obj: PrnAPI.C
 $(CC) $(C_SW) -o$*.Obj PrnAPI.C

PrnWnd.Obj: PrnWnd.C
 $(CC) $(C_SW) -o$*.Obj PrnWnd.C

Support.Obj: Support.C
 $(CC) $(C_SW) -o$*.Obj Support.C

ToolBar.Obj: ToolBar.C
 $(CC) $(C_SW) -o$*.Obj ToolBar.C

