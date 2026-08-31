---
symbol: std::unique_ptr
header: <memory>
since: C++11
---

Smart pointer that owns and manages another object through a pointer, with exclusive, move-only ownership.

## Definition

```cpp
template<class T, class Deleter = std::default_delete<T>>
class unique_ptr;
```

Exactly one `unique_ptr` owns a given object at a time. Ownership can be transferred by moving a `unique_ptr`, but never copied — the copy constructor and copy assignment operator are deleted. When a `unique_ptr` is destroyed, or its managed object is replaced via `reset` or assignment, the current object is destroyed through the deleter. With the default deleter, `unique_ptr<T>` has the same size as a raw `T*` and no runtime overhead beyond that of the raw pointer it wraps.

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
