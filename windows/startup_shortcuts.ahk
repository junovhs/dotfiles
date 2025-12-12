#SingleInstance Force
SetTitleMatchMode, 2

; shortcut to open terminal
; Win + T → Git Bash (focus if exists, otherwise open)
#t::
    if WinExist("ahk_class CASCADIA_HOSTING_WINDOW_CLASS")
        WinActivate
    else
        Run, wt.exe -p "Git Bash"
return

; Win + Shift + T → PowerShell
#+t::
    Run, wt.exe -w 0 -p "PowerShell"
return
