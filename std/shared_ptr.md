---
symbol: std::shared_ptr
header: <memory>
since: C++11
---

Smart pointer that retains shared ownership of an object through a reference-counted control block.

## Definition

```cpp
template<class T>
class shared_ptr;
```

Multiple `shared_ptr` instances can own the same object; the object is destroyed and its memory deallocated when the last owning `shared_ptr` is destroyed or reset. Ownership is tracked via an atomically-updated reference count kept in a control block shared by all copies; `use_count()` returns the current number of owners. This shared bookkeeping gives `shared_ptr` more overhead than `unique_ptr`, which has none. A `weak_ptr` can observe the managed object without contributing to the owner count.

## Examples

```cpp
#include <cassert>
#include <memory>

auto a = std::make_shared<int>(42);
auto b = a;
assert(a.use_count() == 2);
assert(*a == *b);

b.reset();
assert(a.use_count() == 1);
```
