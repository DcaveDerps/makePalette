# makePalette
A personal Aseprite Lua script to add colors to the current palette based on the currently selected foreground color.

Currently the script adds colors by adding or subtracting to the foreground color's value portion of its HSV code, if able. In total, the script will try to add a total of 5 colors to the current palette, including the currently selected foreground color, regardless if it is already in the current palette.

# Installation

The makePalette script can be installed by downloading the lua script and moving it into your Aseprite scripts folder. This folder can be found within Aseprite by using the Open Scripts Folder option in the File menu under Scripts. Once the script is recognized it can be accessed and used through the same Scripts tab in the File menu.
