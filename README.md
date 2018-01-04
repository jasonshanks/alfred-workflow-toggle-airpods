Alfred Workflow – Toggle AirPods
=====================

Have you ever tried to ask Siri to connect to your AirPods? Alas, it can't. So until that day arrives, here's a script solution for you!

This Alfred workflow runs an osascript that toggles the connectivity of your AirPods on your Mac. It offers a keyword or Hotkey trigger to initiate it, which you can customise however you want.

The original script credit goes to Josh Johnson for his AppleScript that either connects or errors out responsibly. His excellent instructions and suggestions for other methods of triggering it can be found over on [Medium](https://medium.com/@secondfret/how-to-connect-your-airpods-to-your-mac-with-a-keyboard-shortcut-9d72e786993b).

## Extended features
I have extended the original functionality with:

* a check for the current Connect/Disconnect status, which then toggles the connectivity based on this state.
* System notifications which provide further confirmation of connection status.
* The applescript has been fully incorporated into an osascript embedded within an Alfred Workflow (instead of launching it externally).

If you're not an Alfred user you can still launch the Applescript app through many other methods such as adding it to your Dock, using [Apple's Spotlight](https://support.apple.com/en-us/HT204014)  or support some other great indie developers with: [QuickSilver](https://qsapp.com), [BetterTouchTool](https://www.boastr.net), [LaunchBar](https://www.obdev.at/products/launchbar/index.html),  [Keyboard Maestro](https://www.keyboardmaestro.com/main/).  Just [download](https://github.com/jasonshanks/alfred-workflow-toggle-airpods/archive/master.zip) this entire Github package and unzip.

## Requirements
1. [Alfred App v3+](http://www.alfredapp.com/#download) – install the latest free version of Alfred.
2. [Alfred Powerpack](https://www.alfredapp.com/powerpack/buy/) – buy the Powerpack (required to use workflows such as this and unlock all the other awesome potential in Alfred)
3. [Toggle Airpods workflow](https://raw.github.com/jasonshanks/alfred-workflow-toggle-airpods/master/toggle-airpods.alfredworkflow) – direct download of this script.

## Installation
Assuming you have Alfred all ready to go:
1. Double-click the workflow you downloaded above to install in Alfred.
2. Review the workflow's Keyword and  Hotkey and customise to your liking. I use a Hyper Key trigger <sup>[1](#fn1)</sup>	
3. Double-click the /usr/bin/osascript and customise Line 11 with the actual name of your AirPods.

![screenshot indicating where to edit the osascript][osascript]

## Commands
- Keyword: `toggle airpods`
- Hotkey: `CONTROL+OPTION+COMMAND+SHIFT+P` or `CAPS LOCK+P` (if you have  a Hyper Key).

## Contributors
- [@jasonshanks](https://github.com/jasonshanks)
- [@secondfret](https://github.com/secondfret)

<a name="fn1">1</a>: All you need to do is install  [Karabiner](https://pqrs.org/osx/karabiner/index.html), a free keyboard customiser then enable the Complex Modification example called: `Change caps_lock to command+control+option+shift`. Inspired by [Brett Terpstra's Hyper Key idea](http://brettterpstra.com/2012/12/08/a-useful-caps-lock-key/).

[osascript]: ./screenshots/edit-osascript.png "Edit Airpods name in osascript"