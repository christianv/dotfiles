set appname to "Pulse Secure"

tell application appname
	if it is not running then
		activate
	end if
end tell

tell application "System Events"
	tell process "Pulse Secure"
		set frontmost to true
		click menu item "Connect" of menu of menu item "Connections" of menu "File" of menu bar 1
		delay 2
		keystroke "push"
		keystroke return
	end tell
end tell
