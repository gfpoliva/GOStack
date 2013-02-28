//
//  NSMutableArray+GOStack.m
//  GOStackExample
//
//  Created by Gabriel Oliva on 28/02/13.
//  Copyright (c) 2013 Gabriel Oliva. All rights reserved.
//

#import "NSMutableArray+GOStack.h"

@implementation NSMutableArray (GOStack)

- (id)initWithGOStack:(GOStack *)stack
{
    self = [[super self] init];
    NSMutableArray *aux = [NSMutableArray array];
    
    if (self) {
        for (GOStackCell *auxCell = stack.top; auxCell != nil; auxCell = [auxCell nextCell])
            [aux addObject:[auxCell item]];
        
        
        NSInteger index = 0;
        NSInteger j = [self count] - 1;
        
        while (index < j) {
            [aux exchangeObjectAtIndex:index withObjectAtIndex:j];
            index++;
            j--;
        }
        
        self = aux;
    }
    
    return self;
}

@end
