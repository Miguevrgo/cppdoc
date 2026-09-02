---
symbol: std::unique_ptr
header: <memory>
since: C++11
---

Smart pointer that owns and manages another object through a pointer and disposes the object when it goes out of scope.

## Definition

```cpp
template <
    class T,
    class Deleter
> class unique_ptr<T[], Deleter>;
```

Exactly one `unique_ptr` owns a given object at a time. Ownership can be transferred by moving a `unique_ptr`, it may also own no object, in which case it is described as empty.

## Examples

```cpp
#include <cassert>
#include <memory>

auto a = std::make_unique<int>(42);
assert(*a == 42);

auto b = std::move(a);
assert(a == nullptr);
assert(*b == 42);
```
