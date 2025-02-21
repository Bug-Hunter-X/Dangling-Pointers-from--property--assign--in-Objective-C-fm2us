In Objective-C, a less common error arises from the interaction between `@property` attributes and memory management. Specifically, using `assign` instead of `strong` or `weak` for properties that should have their lifetime managed can lead to dangling pointers and unexpected crashes. This is often subtle and difficult to debug because it doesn't always cause immediate crashes.  Consider this example:

```objectivec
@interface MyClass : NSObject
@property (assign) MyOtherClass *otherObject;
@end

@implementation MyClass
// ...
@end
```

If `MyOtherClass` is not a simple data type, using `assign` means that when `otherObject` is deallocated, the pointer in `MyClass` will still point to that deallocated memory. Accessing `otherObject` later can lead to crashes or undefined behavior.