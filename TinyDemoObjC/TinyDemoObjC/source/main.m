//
//  main.m
//  TinyDemoObjC
//
//  Created by Pablo Menendez Blanco on 4/19/20.
//  Copyright © 2020 myorganization. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "DemoView.h"

/*
 * setup(  ) performs the functions that would normally be performed by
 * loading a nib file.
 */
void setup(  )
{
    NSWindow *myWindow;      // typed pointer to NSWindow object
    NSView   *myView;        // typed pointer to NSView object
    NSRect    graphicsRect;  // contains an origin, width, height

    // initialize the rectangle variable
    graphicsRect = NSMakeRect(100.0, 350.0, 400.0, 400.0);

    myWindow = [ [NSWindow alloc]              // create the window
               initWithContentRect: graphicsRect
                         styleMask:NSTitledWindowMask
                                  |NSClosableWindowMask
                                  |NSMiniaturizableWindowMask
                           backing:NSBackingStoreBuffered
                             defer:NO ];

    [myWindow setTitle:@"Tiny Application Window"];

    // create amd initialize the DemoView instance
    myView = /*[*/[[DemoView alloc] initWithFrame:graphicsRect] /*autorelease]*/;

    [myWindow setContentView:myView ];    // set window's view

    [myWindow setDelegate:myView ];       // set window's delegate
    [myWindow makeKeyAndOrderFront: nil]; // display window
}

int main(  )
{
    // create the autorelease pool
    //NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    // create the application object
    NSApp = [NSApplication sharedApplication];

    // set up the window and drawing mechanism
    setup(  );

    // run the main event loop
    [NSApp run];

    // we get here when the window is closed
	
	//release not available in automatic reference counting mode
    //[NSApp release];      // release the app
    //[pool release];       // release the pool
    return(EXIT_SUCCESS);
}
