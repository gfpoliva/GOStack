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

#import "GOStack.h"

@implementation GOStack

#pragma mark - GOStack functions

- (BOOL)isEmpty
{
    return self.top == nil;
}

- (void)push:(id)item
{
    GOStackCell *auxCell = self.top;
    _top = [[GOStackCell alloc] initWithItem:item];
    [self.top setNextCell:auxCell];
    
    _numberOfElements++;
}

- (id)pop
{
    id item = nil;
    
    if (self.numberOfElementsInStack > 0)
    {
        if (self.top != nil) {
            item = [self.top item];
            _top = [self.top nextCell];
            
            _numberOfElements--;
        }
    }
    
    return item;
}

- (BOOL)contains:(id)item
{
    BOOL found = NO;
    
    for (GOStackCell *auxCell = self.top; auxCell != nil && !found; auxCell = [auxCell nextCell])
        found = [auxCell.item isEqual:item];
    
    return found;
}

- (void)insertAtBottom:(id)item
{
    GOStackCell *auxCell = self.top;
    GOStackCell *previousCell = nil;
    
    while (auxCell != nil) {
        previousCell = auxCell;
        auxCell = [auxCell nextCell];
    }
    
    previousCell.nextCell = [[GOStackCell alloc] initWithItem:item];
    _numberOfElements++;
}

- (int)numberOfElementsInStack
{
    return self.numberOfElements;
}



@end
