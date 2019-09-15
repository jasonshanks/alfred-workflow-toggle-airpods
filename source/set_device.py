# encoding: utf-8
import sys
from workflow import Workflow

connect_script_template = """
set userLocale to user locale of (system info)
if userLocale is "en_US" then
    set user_connection to "Connection"
    set user_disconnection to "Disconnection"

else if userLocale is "ko-Kore_KR" then
    set user_connection to "연결"
    set user_disconnection to "연결 해제"

else if userLocale is "zh_CN" then
    set user_connection to "连接"
    set user_disconnection to "断开连接"
end if

set device_name to "your_device_name"

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
"""
workflow = Workflow()

def main(wf):

    if len(sys.argv) < 2:
        print "No templates selected, nothing built."
        return

    with open('connection.scpt', 'w+') as f:
        device_name = " ".join(sys.argv[1:])
        connection_script = connect_script_template.replace('your_device_name', device_name)
        f.write(connection_script)

    print "Successfully setup!(device name is {device_name})".format(device_name=device_name)
    return

if __name__ == "__main__":
    sys.exit(workflow.run(main))
