The solution is to use `strong` or `weak` for properties that should be memory managed.  `strong` ensures the object's lifetime is tied to the property, preventing deallocation while the property holds a reference. `weak` avoids creating a strong reference cycle, useful in situations with circular dependencies.

```objectivec
@interface MyClass : NSObject
@property (strong) MyOtherClass *otherObject; // Or (weak), depending on the relationship
@end

@implementation MyClass
// ...
@end
```

Choosing between `strong` and `weak` depends on the relationship between the classes. If `MyClass` needs `MyOtherClass` to exist for as long as it does, use `strong`.  If the relationship is unidirectional or the possibility of a retain cycle exists, use `weak`.  Incorrect use of `assign` can lead to seemingly random crashes, requiring careful review of memory management practices.