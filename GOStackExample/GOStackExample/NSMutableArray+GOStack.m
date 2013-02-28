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
