//
//  GOStack.m
//  GOStackExample
//
//  Created by Gabriel Oliva on 28/02/13.
//  Copyright (c) 2013 Gabriel Oliva. All rights reserved.
//

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
