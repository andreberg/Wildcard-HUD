Introduction
------------

Wildcard HUD is a headless (i.e. no menu bar) application that allows for selecting files in the Finder by use of wildcards (*, ?) or by use of Regular Expressions.  

It is a combination of Wildcard.app (a sample app distributed with the OgreKit.framework), and BGHUDAppKit.framework.

![alt text](http://www.bergmedia.de/remote/github/Wildcard-HUD/Wildcard-HUD.png "Title")

Installing
----------

Grab the [latest version](http://github.com/downloads/andreberg/Wildcard-HUD/Wildcard%20HUD-latest.zip) from [downloads](http://github.com/andreberg/Wildcard-Hud/downloads), unzip, and drag the `Wildcard HUD.app` it produces to the Finder toolbar.   
You may have to hover a bit over the exact location where you want to put it on your Finder toolbar.

The recommended usage is putting the application into a Finder toolbar.  

Usage
-----

When launched it provides a nice HUD panel (see above) that will work on the Finder window that is frontmost.

Most buttons and checkboxes are quite self-explanatory.

`On Desktop` will target the desktop and `Switch to Finder` will make the Finder active with the selected files so that you may continue to work with them right away.

And you can also move selected files to the Trash and rename them.

Building
--------

If you get an error while building that tells you it can't resolve a plug-in reference in MainMenu.xib, you may be missing the BGHUDAppKit.ibplugin for Interface Builder. 

Look inside BGHUDAppKit.framework/Download the framework and install the Interface Builder plugin that comes with it.

Attribution
-----------

The code base, `Wildcard.app`, was created by Isao Sonobe.  
You can find the original readme (in Japanese) enclosed with the source code.

The application icon was originally created by [Henrik Nyh](http://henrik.nyh.se/2007/10/open-terminal-here-and-glob-select-in-leopard-finder) for an AppleScript called [LSelect](http://anoved.net/software/lselect/).  
The script targets much the same problem domain and allows you to select files based on Shell globbing.

Uses [BGHUDAppKit](http://www.binarymethod.com/?page_id=90) Framework, created by Tim Davis.

License
-------

The original Wildcard.app is licensed under the OgreKit License.

----

Created by André Berg on 20-01-12.  
Copyright 2011 Berg Media. All rights reserved.  

Licensed under the Apache License, Version 2.0 (the "License");  
you may not use this file except in compliance with the License.  
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software  
distributed under the License is distributed on an "AS IS" BASIS,  
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and  
limitations under the License.  
