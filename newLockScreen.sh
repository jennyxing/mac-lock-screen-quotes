#!/bin/bash

# add to `crontab -e` the below line localizing path run every hour
# 0 * * * * sudo bash /Users/stanley.zheng/code/personal/mac-lock-screen-quotes/changeLockScreenMessage.sh  >/tmp/stdout.log 2>/tmp/stderr.log

python requestQuotes.py
sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "`cat /Users/stanley.zheng/code/personal/mac-lock-screen-quotes/quotesAPIResults.txt`"

