#!/bin/bash

# the two commands to run to load and unload the script into launchctl (like cron)
# sudo launchctl load -w /Library/LaunchDaemons/local.changeLockScreenMessage.plist
# sudo launchctl unload /Library/LaunchDaemons/local.changeLockScreenMessage.plist

# quote=$(/usr/bin/curl -X GET --header 'Accept: application/json' 'https://quotes.rest/qod?category=life' | jq -r '.contents.quotes[0].quote')
# author=$(/usr/bin/curl -X GET --header 'Accept: application/json' 'https://quotes.rest/qod?category=life' | jq -r '.contents.quotes[0].author')

# sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "$quote - $author"

sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "`cat /Users/jennyx/Documents/mac-lock-screen-quotes/quotesAPIResults.txt`"

