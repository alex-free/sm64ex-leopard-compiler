--SM64EXLC By Alex Free
--V1.0.1 3/16/2021 
-- v1.0 3/14/2021
set debug to ""

set sdl1 to ""
set sdl2 to ""
set gl1 to ""
set gl2 to ""
set branch to ""
set btest to ""
set build to ""
set region to ""
set japan to "8a20a5c83d6ceb0f0506cfc9fa20d8f438cafe51"
set usa to "9bef1128717f958171a4afac3ed78ee2bb4e86ce"

tell application "Finder"
	if debug is "true" then
		set btest to "/Applications/SM64EXLC.app/"
	else
		set btest to POSIX path of ((path to me as text))
	end if
end tell
if btest is "/Applications/SM64EXLC.app/" then
	set rom to POSIX path of (choose file with prompt "Select your USA or Japan Super Mario 64 .z64 ROM file (required to extract game assets):")
	tell me to activate
	
	set rom_sha1 to do shell script "cat \"" & rom & "\" | openssl dgst -sha1 -binary | xxd -p"
	
	if rom_sha1 is equal to japan then
		set region to "jp" as text
		display dialog "Successfully verified that this is a Japan Super Mario 64 .z64 ROM file!"
	else if rom_sha1 is equal to usa then
		set region to "us" as text
		display dialog "Successfully verified that this is a USA Super Mario 64 .z64 ROM file!"
		
	else
		display dialog "This ROM file (SHA1SUM: " & rom_sha1 & ") is not a valid USA or Japan .z64 file and can't be used."
		error number -128
	end if
	
	set actionChoice to (choose from list {"Master", "Nightly"} with prompt "Which SM64EX branch would you like to compile?" OK button name "OK" cancel button name "Cancel" default items "Master" without multiple selections allowed) as text
	
else if btest is not "/Applications/SM64EXLC.app/" then
	tell me
		activate
		(display dialog "SM64EXLC.app has to be in the /Applications directory to continue." buttons "OK")
		error number -128
	end tell
end if

if actionChoice is "Nightly" then
	set branch to "nightly" as text
	
	set actionChoice to (choose from list {"SDL 1.2.15", "Leopard SDL 2.0.6"} with prompt "The SM64EX Nightly branch supports both SDL 1 and SDL 2. Which SDL version do you want to use?" OK button name "OK" cancel button name "Cancel" default items "SDL 1.2.15" without multiple selections allowed) as text
	
	if actionChoice is "SDL 1.2.15" then
		set sdl1 to "true" as text
	else if actionChoice is "Leopard SDL 2.0.6" then
		set sdl2 to "true" as text
	end if
	
else if actionChoice is "Master" then
	set branch to "master" as text
	set sdl2 to "true" as text
else
	error number -128
end if


set actionChoice to (choose from list {"OpenGL 1", "OpenGL 2"} with prompt "SM64EX supports both an OpenGL 1 and OpenGL 2 renderer. Which would you like to use?" OK button name "OK" cancel button name "Cancel" default items "OpenGL 1" without multiple selections allowed) as text

if actionChoice is "OpenGL 1" then
	set gl1 to "true" as text
	set build to "true" as text
else if actionChoice is "OpenGL 2" then
	set gl2 to "true" as text
	set build to "true" as text
else
	error number -128
end if


if gl1 is "true" and sdl1 is "true" then
	set command to "gmake LEGACY_OSX_BUILD=1 WINDOW_API=SDL1 AUDIO_API=SDL1 CONTROLLER_API=SDL1 RENDER_API=GL_LEGACY VERSION=" & region & "" as text
else if gl2 is "true" and sdl1 is "true" then
	set command to "gmake LEGACY_OSX_BUILD=1 WINDOW_API=SDL1 AUDIO_API=SDL1 CONTROLLER_API=SDL1 VERSION=" & region & "" as text
else if gl1 is "true" and sdl2 is "true" then
	set command to "gmake LEGACY_OSX_BUILD=1 RENDER_API=GL_LEGACY VERSION=" & region & "" as text
else if gl2 is "true" and sdl2 is "true" then
	set command to "gmake LEGACY_OSX_BUILD=1 VERSION=" & region & "" as text
else
	error number -128
end if


if build is "true" then
	tell application "Terminal"
		activate
		if not (exists window 1) then reopen window 1
		activate
		set background color of first window to "black"
		set cursor color of first window to "white"
		set normal text color of first window to "white"
		set bold text color of first window to "white"
		do script "" & btest & "/compile " & branch & " \"" & rom & "\" \"" & command & "\" " & region & "" in window 1
	end tell
end if
