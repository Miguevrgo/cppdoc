---
symbol: std::shared_ptr::use_count
header: <memory>
since: C++11
---

Returns the number of `shared_ptr` instances managing the current object.

## Usage

```cpp
long use_count() const noexcept;
```

Returns 0 if `*this` is empty (no managed object). In multithreaded programs the value may be stale as soon as it is read if other threads concurrently copy or destroy `shared_ptr` instances to the same object; it is intended for debugging and diagnostics rather than synchronization.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <memory>

auto a = std::make_shared<int>(42);
assert(a.use_count() == 1);

auto b = a;
assert(a.use_count() == 2);

b.reset();
assert(a.use_count() == 1);
```
