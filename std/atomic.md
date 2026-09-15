---
symbol: std::atomic
header: <atomic>
since: C++11
---

Template class providing atomic operations store, load and read-modify write.

## Definition

```cpp
template<class T>
struct atomic;
```

Each instantiation of `std::atomic` represents a type whose operations (load, store, read-modify-write) are guaranteed to be atomic, having a predictable memory order which requires that read-modify-write operations must each time read the value of the last write.

## Examples

```cpp
#include <atomic>
#include <cassert>

std::atomic<int> counter{0};

counter.fetch_add(1);
assert(counter.load() == 1);
```
