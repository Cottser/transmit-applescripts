tell application "Transmit"
	set theBrowser to remote browser of current tab of document 1
	set thePath to root path of theBrowser
	set theFavorite to favorite of theBrowser
	
	set current tab of document 1 to (make new tab at end of document 1)
	tell current tab of document 1
		connect to theFavorite
		change location of remote browser to path thePath
	end tell
end tell