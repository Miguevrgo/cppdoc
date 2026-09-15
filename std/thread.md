---
symbol: std::thread
header: <thread>
since: C++11
---

Class representing a single thread of execution.

## Definition

```cpp
class thread;
```

A thread begins execution immediately upon construction of the `std::thread` object. If a thread is still joinable when its destructor runs, `std::terminate` is called; you must call `join()` or `detach()` before the object is destroyed.

## Examples

```cpp
#include <cassert>
#include <thread>

int value = 0;
std::thread t([&value]() {
    value = 42;
});

t.join();
assert(value == 42);
```
