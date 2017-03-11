module Clyde

/* Fix launch... when we have been playing with info.plist
lsregister -f Clyde.app
*/

import StdEnv

from System.CommandLine					import setReturnCode

from Cocoa.Foundation					import ::NSApplication, sharedApplication , runApplication, makeUnbundledLaunchable

from Clyde.projwindowcontroller			import makeProjWindowControllerClass
from Clyde.ClydeApplicationController	import createAppDelegate, initAppDelegate, swizzleAboutPanel
from Clyde.textdocument					import createTextDocument
from Clyde.projdocument					import createProjDocumentClass
from Clyde.menus						import populateMainMenu
from Clyde.DebugClyde					import installDebug

Start world
	#!	world			= installDebug world
		(app,world) 	= sharedApplication world
		world			= swizzleAboutPanel world
		world			= populateMainMenu world
		world			= createAppDelegate world				// register AppDelegate class
		world			= createTextDocument world				// register TextDocument class
		world			= createProjDocumentClass world			// register ProjDocument class
		world			= makeProjWindowControllerClass world	// register ProjWindowController class
		world			= makeUnbundledLaunchable app world		// not sure if this is working or changes anything?!
		world			= initAppDelegate app world
		world			= runApplication app world
		ret				= 42
		world			= setReturnCode ret world
	= world
