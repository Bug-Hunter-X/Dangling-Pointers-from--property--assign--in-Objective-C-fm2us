# Dangling Pointers from @property (assign) in Objective-C

This repository demonstrates a subtle but potentially dangerous issue in Objective-C related to memory management and the `@property` attribute.  Using `assign` for properties that should have their lifetime managed can create dangling pointers, leading to unpredictable behavior and crashes.

The `bug.m` file shows the problematic code, while `bugSolution.m` provides the corrected version.  The issue is explained in more detail in the `bug.m` and `bugSolution.m` file comments.