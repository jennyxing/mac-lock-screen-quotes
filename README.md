# Introduction
This application updates a Mac's lock screen message with a daily quote from https://quotes.rest/.

A Python script is written to fetch the quote from the API and write it to a `txt` file. A shell script calls the command to set the lock screen message to what's contained in the `txt` file.

Two approaches were taken- one using an Automator app and one using crontab.

## First steps
Update the file locations in each file to be relevant to your system's paths. 

## Setup Instructions

### Using the Automator app
LockScreenQuotes can be run manually using the Mac's Automator applications.

To have the application run on startup, go to System Preferences -> User & Groups -> Login Items, and add LockScreenQuotes as an item.

### Using crontab
The crontab solution is set up to run at minute 0 of each hour. 

Open a terminal and type in `sudo crontab -e`, which will open up a vim editor. Press `i` to go into insert mode. Paste the contents of `LockScreenQuotesCrontab.txt` into to the editor. Type `:wq` to exit the editor. 
