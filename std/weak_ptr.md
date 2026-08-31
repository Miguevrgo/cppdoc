---
symbol: std::weak_ptr
header: <memory>
since: C++11
---

Non-owning smart pointer that observes an object managed by `std::shared_ptr` without affecting its reference count.

## Definition

```cpp
template<class T>
class weak_ptr;
```

A `weak_ptr` holds a non-owning reference to an object already managed by a `shared_ptr`, and does not contribute to the owner count. To access the referenced object, a `weak_ptr` must first be converted to a `shared_ptr` via `lock()`, which returns an empty `shared_ptr` if the object has already been destroyed. `weak_ptr` is commonly used to break reference cycles between `shared_ptr` instances that would otherwise leak memory, and to safely check whether a shared object is still alive without extending its lifetime.

## Examples

```cpp
#include <cassert>
#include <memory>

auto sp = std::make_shared<int>(42);
std::weak_ptr<int> wp = sp;

assert(!wp.expired());
if (auto locked = wp.lock()) {
    assert(*locked == 42);
}

sp.reset();
assert(wp.expired());
assert(wp.lock() == nullptr);
```
