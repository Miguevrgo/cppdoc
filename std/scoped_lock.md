---
symbol: std::scoped_lock
header: <mutex>
since: C++17
---

RAII wrapper for multiple mutexes with deadlock avoidance.

## Definition

```cpp
template<class... MutexTypes>
class scoped_lock;
```

Locks all provided mutexes upon construction using a deadlock-avoidance algorithm (similar to `std::lock`), and releases them in reverse order upon destruction.
If a single mutex type is supplied, behaves identically to `std::lock_guard` without extra overhead.

## Examples

```cpp
#include <cassert>
#include <mutex>

std::mutex mtx1;
std::mutex mtx2;
int a = 1, b = 2;

{
    std::scoped_lock lock(mtx1, mtx2);
    std::swap(a, b);
}

assert(a == 2 && b == 1);
```
