
set userLocale to user locale of (system info)
if userLocale is "en_US" then
    set user_connection to "Connection"
    set user_disconnection to "Disconnection"

else if userLocale is "ko-Kore_KR" then
    set user_connection to "연결"
    set user_disconnection to "연결 해제"
end if

set device_name to "Pods"

    tell application "System Events"
        tell process "SystemUIServer"
            set btMenu to (menu bar item 1 of menu bar 1 whose description contains "bluetooth")
            tell btMenu
                    click
                    tell (menu item device_name of menu 1)
                            click
                            if exists menu item user_connection of menu 1 then
                                    click menu item user_connection of menu 1
                                    display notification "Connecting AirPods..." with title "Toggle AirPods"
                            else if exists menu item user_disconnection of menu 1 then
                                    click menu item user_disconnection of menu 1
                                    display notification "Disconnecting AirPods..." with title "Toggle AirPods"
                            else
                                    click btMenu -- Close main BT drop down if Connect wasn't present
                                    return "Airpods were not found, try manually pairing them again!"
                            end if
                    end tell
            end tell
        end tell
    end tell
