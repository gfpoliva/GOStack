GOStack
=======

GOStack is an implementation of an abstract data type Stack in Objective-C. 

# Using

First of all, you need to add the source files into your project and then import in the file that you want to use.
```  objc

#import "GOStack.h"
```

The initialize of Stack have no parameter.
```  objc

GOStack *stack = [[GOStack alloc] init];
```

Once initialized, you can push and pop.
```  objc

// Inserts a new element on the top of the stack
- (void)push:(id)item;

// Remove and returns the item from the top of the stack
- (id)pop;
```

The others methos of GOStack
```  objc

// Check if the stack is empty
- (BOOL)isEmpty;

// Check if the stack contains the item
- (BOOL)contains:(id)item;

// Inserts a new element on the bottom of the stack
- (void)insertAtBottom:(id)item;

// Returns the number of items in stack
- (int)numberOfElementsInStack;
```

I also created a category for NSMutableArray. This allow us to init a NSMutableArray with a Stack!
To do this, we need to import the category `#import "NSMutableArray+GOStack.h"` and then initialize with the option:
``` objc

NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithGOStack:stackName];
```

# License
---

```

 Permission is hereby granted, free of charge, to any person obtaining a copy of
 this software and associated documentation files (the "Software"), to deal in
 the Software without restriction, including without limitation the rights to
 use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
 of the Software, and to permit persons to whom the Software is furnished to do
 so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 If you happen to meet one of the copyright holders in a bar you are obligated
 to buy them one pint of beer.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 
 ```
 ---
 
# Contact
 
You can contact me at @gabrieloliva_ or in my facebook page fb.com/gfpoliva.
