definition module Clyde.ClydeApplicationController

swizzleAboutPanel :: !*a -> *a

initAppDelegate :: !Int !*World -> *World

createAppDelegate :: !*World -> *World

// exports for foreign...
AppDelLogWindows :: !Int !Int !Int -> Int
AppDelDidFinishLaunching :: !Int !Int !Int -> Int
shouldOpenUntitledFile :: !Int !Int !Int -> Int

//

imp_orderFrontStandardAboutPanel :: Int
orderFrontStandardAboutPanel :: !Int !Int !Int -> Int