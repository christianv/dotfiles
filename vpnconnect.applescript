# Connect to VPN if disconnected
# Compile: `osacompile -o vpnconnect.app vpnconnect.applescript`

set appname to "GlobalProtect"

tell application appname
	if it is not running then
		activate
	end if
end tell

set x to (do shell script "curl https://git.musta.ch/airbnb/pineapple --max-time 1 && echo 'VPN Connected' || echo 'VPN Disconnected'")
-- display dialog x

if x = "VPN Disconnected" then
	tell application "System Events"
		tell process appname
			set frontmost to true

			click menu bar item 1 of menu bar 2
			-- UI elements
			click UI element "Connect" of window 1

			click menu bar item 1 of menu bar 2
		end tell
	end tell
end if
