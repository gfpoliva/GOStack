//
//  GOStackCell.h
//  GOStackExample
//
//  Created by Gabriel Oliva on 28/02/13.
//  Copyright (c) 2013 Gabriel Oliva. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GOStackCell.h"

@interface GOStackCell : NSObject

@property (nonatomic, strong) id item; // Value of the cell
@property (nonatomic, strong) GOStackCell *nextCell; // Next cell that is referenced

// Constructor class
- (id)init;
- (id)initWithItem:(id)item;
- (id)initWithItem:(id)item andNextCell:(GOStackCell *)cell;


@end
