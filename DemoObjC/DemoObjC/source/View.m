//
//  DemoView.m
//  TinyDemoObjC
//
//  Created by Pablo Menendez Blanco on 4/19/20.
//  Copyright © 2020 myorganization. All rights reserved.
//

#import "View.h"

@implementation CView

#define X(t) (sin(t)+1) * width * 0.5     // macro for X(t)
#define Y(t) (cos(t)+1) * height * 0.5    // macro for Y(t)

- (void)drawRect:(NSRect)rect
{
    

}

-(void)windowWillClose:(NSNotification *)notification
{
    [NSApp terminate:self];
}

@end
