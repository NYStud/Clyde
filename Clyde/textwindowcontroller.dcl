definition module Clyde.textwindowcontroller

from System._Pointer import :: Pointer

populateTextWindow :: !Pointer !String !*World -> (!Pointer,!*World)	// create an NSWindow with a scrollable NSTextView inside

/*
- need to make actual TextWindowController so that it is delegate for NSTextView?
- move addSyncolDelegate from app delegate here
- what do we need to do to get dirty/undo/redo?
*/