//
//  GOStackCell.m
//  GOStackExample
//
//  Created by Gabriel Oliva on 28/02/13.
//  Copyright (c) 2013 Gabriel Oliva. All rights reserved.
//

#import "GOStackCell.h"

@implementation GOStackCell

#pragma mark - Queue cell initializing

- (id)init
{
    self = [super init];
    if (self) {
        self.item = nil;
        self.nextCell = nil;
    }
    
    return self;
}

- (id)initWithItem:(id)item
{
    self = [super init];
    if (self) {
        self.item = item;
        self.nextCell = nil;
    }
    
    return self;
}

- (id)initWithItem:(id)item andNextCell:(GOStackCell *)cell
{
    self = [super init];
    if (self) {
        self.item = item;
        self.nextCell = cell;
    }
    
    return self;
}


@end
