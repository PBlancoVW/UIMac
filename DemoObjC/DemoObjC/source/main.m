//
//  main.m
//  TinyDemoObjC
//
//  Created by Pablo Menendez Blanco on 4/19/20.
//  Copyright © 2020 myorganization. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "View.h"

/*
 * setup(  ) performs the functions that would normally be performed by
 * loading a nib file.
 */
void setup(  )
{
    NSWindow* myWindow;
    NSView* myView;

    NSRect graphicsRect;
    graphicsRect = NSMakeRect(100.0, 350.0, 500.0, 300.0); //from bottom-left corner: x,y,width,height

    myWindow = [ [NSWindow alloc] initWithContentRect: graphicsRect
											styleMask: NSWindowStyleMaskTitled | NSWindowStyleMaskClosable
														| NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskResizable
											  backing: NSBackingStoreBuffered
												defer: NO ];

    [myWindow setTitle:@"Application Window"];
	
	myView = [[CView alloc] initWithFrame:graphicsRect];

    [myWindow setContentView:myView ];

    [myWindow setDelegate:(id)myView ];
    [myWindow makeKeyAndOrderFront: nil];
}

int main(  )
{
    NSApp = [NSApplication sharedApplication];
	
    setup(  );
	
    [NSApp run];
	
    return(EXIT_SUCCESS);
}
