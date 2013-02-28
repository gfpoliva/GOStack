//
//  GOStack.h
//  GOStackExample
//
//  Created by Gabriel Oliva on 28/02/13.
//  Copyright (c) 2013 Gabriel Oliva. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GOStackCell.h"

@interface GOStack : NSObject

@property (nonatomic, strong, readonly) GOStackCell *top;
@property (nonatomic, assign, readonly) int numberOfElements;

// Check if the stack is empty
- (BOOL)isEmpty;

// Inserts a new element on the top of the stack
- (void)push:(id)item;

// Remove and returns the item from the top of the stack
- (id)pop;

// Check if the stack contains the item
- (BOOL)contains:(id)item;

// Inserts a new element on the bottom of the stack
- (void)insertAtBottom:(id)item;

// Returns the number of items in stack
- (int)numberOfElementsInStack;

@end
