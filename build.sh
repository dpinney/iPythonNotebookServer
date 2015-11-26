#!/bin/bash

# Prerequisites: Platypus.app, and the installed command line tool (use File > Preferences... from the app).

# Make the icon from the icon PNG.
mkdir Icon1024.iconset
sips -z 16 16     Icon1024.png --out Icon1024.iconset/icon_16x16.png
sips -z 32 32     Icon1024.png --out Icon1024.iconset/icon_16x16@2x.png
sips -z 32 32     Icon1024.png --out Icon1024.iconset/icon_32x32.png
sips -z 64 64     Icon1024.png --out Icon1024.iconset/icon_32x32@2x.png
sips -z 128 128   Icon1024.png --out Icon1024.iconset/icon_128x128.png
sips -z 256 256   Icon1024.png --out Icon1024.iconset/icon_128x128@2x.png
sips -z 256 256   Icon1024.png --out Icon1024.iconset/icon_256x256.png
sips -z 512 512   Icon1024.png --out Icon1024.iconset/icon_256x256@2x.png
sips -z 512 512   Icon1024.png --out Icon1024.iconset/icon_512x512.png
cp Icon1024.png Icon1024.iconset/icon_512x512@2x.png
iconutil -c icns Icon1024.iconset
rm -R Icon1024.iconset

# Make the server app.
/usr/local/bin/platypus  -i 'Icon1024.icns'  -a 'iPythonNotebookServer'  -o 'Text Window' -p '/usr/bin/python'  -g '#ffffff'  -b '#D53D1B'  'ipythonNotebookServer.py'

# Make the opener app.
/usr/local/bin/platypus -DBR  -i 'Icon1024.icns'  -a 'iPythonNotebook'  -o 'None' -p '/usr/bin/python'  -V '1.0.2' -X 'ipynb'  'ipythonNotebook.py'

# Put the server app inside the opener app.
mv iPythonNotebookServer.app iPythonNotebook.app/Contents/Resources/

# Clean up the icon.
rm Icon1024.icns
