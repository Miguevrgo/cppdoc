---
symbol: std::weak_ptr::lock
header: <memory>
since: C++11
---

Creates a `shared_ptr` that shares ownership of the managed object.

## Usage

```cpp
shared_ptr<T> lock() const noexcept;
```

If the managed object has already been destroyed (i.e. `expired()` is `true`), returns an empty `shared_ptr<T>`. Otherwise returns a `shared_ptr<T>` sharing ownership with the original owners, atomically incrementing the reference count so the object cannot be destroyed while the returned `shared_ptr` is alive.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <memory>

auto sp = std::make_shared<int>(42);
std::weak_ptr<int> wp = sp;

auto locked = wp.lock();
assert(locked != nullptr);
assert(*locked == 42);

sp.reset();
locked.reset();
assert(wp.lock() == nullptr);
```
