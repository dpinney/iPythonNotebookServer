'''  Front end to the iPython notebook server. '''

import os, sys, webbrowser, subprocess, time, atexit
from urllib2 import urlopen, URLError

# If the server isn't running, start it.
try:
	urlopen('http://localhost:8888/') # Check for server.
	print 'Server already running!'
except URLError:
	os.chdir('/')
	servProc = subprocess.Popen('/usr/local/bin/ipython notebook --no-browser --port-retries=0', shell=True) # Start server here.

# For testing:
#inPath = "/Users/dpinney/Desktop/laterbase/ipythonNotebookServer/HAX.ipynb"
# Open all the files.
	
# Shut down the server when quitting.
def serverQuit(): servProc.kill()
atexit.register(serverQuit)

# Wait for the process to finish:
servProc.wait()