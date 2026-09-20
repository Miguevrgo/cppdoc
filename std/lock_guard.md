---
symbol: std::lock_guard
header: <mutex>
since: C++11
---

RAII wrapper that provides a mutex ownership wrapper.

## Definition

```cpp
template<class Mutex>
class lock_guard;
```

Acquires exclusive ownership of the given mutex on construction, and releases it on destruction when leaving the current scope.
`lock_guard` cannot be copied or moved.

## Examples

```cpp
#include <cassert>
#include <mutex>

std::mutex mtx;
int value = 0;

{
    std::lock_guard<std::mutex> lock(mtx);
    value = 42;
}

assert(value == 42);
```
