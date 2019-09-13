use AppleScript version "2.4" -- Yosemite (10.10) or later
use framework "Foundation"
use framework "IOBluetooth"
use scripting additions

set allNames to ((current application's IOBluetoothDevice's recentDevices:0)'s valueForKey:"nameOrAddress") as list
set pairedNames to ((current application's IOBluetoothDevice's pairedDevices())'s valueForKey:"nameOrAddress") as list
