'''  Open documents in the filesystem with the local iPython notebook server. '''

import os, sys, webbrowser, subprocess, time, atexit
from urllib2 import urlopen, URLError

# If the server isn't running, start it.
try:
	urlopen('http://localhost:8888/') # Check for server.
except URLError:
	subprocess.Popen('/usr/bin/open ./iPythonNotebookServer.app', shell=True)
	time.sleep(2)

# For testing:
# inPath = "/Users/dpinney/Desktop/laterbase/ipythonNotebookServer/HAX.ipynb"

# Open all the files.
if len(sys.argv) > 1:
	for inPath in sys.argv[1:]:
		webbrowser.open('http://localhost:8888/notebooks' + inPath)
else:
	webbrowser.open('http://localhost:8888/tree#running')