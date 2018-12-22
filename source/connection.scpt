activate application "SystemUIServer"
tell application "System Events"
	tell process "SystemUIServer"
		-- Working CONNECT/DISCONNECT Script.  Goes through the following:
		-- Clicks on Bluetooth Menu (OSX Top Menu Bar)
		--    => Clicks on AirPodsName Item [NOTE: you must change AirPodsName on Line 11 to your AirPods name!]
		--      => Clicks on Connect or Disconnect Item depending on current connection status
		set btMenu to (menu bar item 1 of menu bar 1 whose description contains "bluetooth")
		tell btMenu
			click
			tell (menu item "AirPodsName" of menu 1)
				click
				if exists menu item "Connect" of menu 1 then
					click menu item "Connect" of menu 1
					display notification "Connecting AirPods..." with title "Toggle AirPods"
				else if exists menu item "Disconnect" of menu 1 then
					click menu item "Disconnect" of menu 1
					display notification "Disconnecting AirPods..." with title "Toggle AirPods"
				else
					click btMenu -- Close main BT drop down if Connect wasn't present
					return "Airpods were not found, try manually pairing them again!"
				end if
			end tell
		end tell
	end tell
end tell

-- Script by Jason Shanks of http://FirstWorldAppleProblems.com
-- Adapted from an original script by Josh Johnson
