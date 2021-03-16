-- SM64EX Launcher by Alex Free V1.0 - 3/15/2021
set actionChoice to (choose from list {"Start Game", "Edit Config File", "Open Preferences Folder"} with prompt "SM64EX Launcher" OK button name "OK" cancel button name "Cancel" default items "Start Game" without multiple selections allowed) as text

set btest to POSIX path of ((path to me as text))

if actionChoice is "Start Game" then
	do shell script "" & btest & "/sm64.* --savepath '!'"
else if actionChoice is "Edit Config File" then
	do shell script "open -e \"" & btest & "Contents/Resources/sm64config.txt\""
else if actionChoice is "Open Preferences Folder" then
	do shell script "open \"" & btest & "Contents/Resources\""
end if
