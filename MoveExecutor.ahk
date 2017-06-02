;
; AutoHotkey Version: 1.x
; Language:       Italian
; Platform:       Win9x/NT/Win7
; Author:         Penaz
;
; Script Function:
;	Copia il file move.bat nella cartella da riordinare, lo esegue e lo elimina alla fine del processo
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;Memorizza il percorso in cui andrà memorizzato il file BAT, lo copia e attende 1 secondo
Percorso=%1%\Move.bat
FileCopy, Move.bat, %Percorso%
sleep, 1000
;Imposta come directory di lavoro il percorso della cartella da riordinare e avvia move.bat
SetWorkingDir %1%\
Run, Move.bat
;Chiede all'utente di premere OK quando la finestra batch si è chiusa, poi elimina il file move.bat
msgbox "Premere Ok Quando il trasferimento è terminato"
FileDelete, Move.bat
