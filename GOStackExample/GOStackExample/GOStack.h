/*
 Copyright (c) 2013 Gabriel Oliva. All right reserved
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 */

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
