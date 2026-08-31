---
symbol: std::weak_ptr::reset
header: <memory>
since: C++11
---

Releases the reference to the managed object.

## Usage

```cpp
void reset() noexcept;
```

After the call, `*this` refers to no object, as if default-constructed. Does not affect the lifetime of the managed object beyond releasing this observer.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <memory>

auto sp = std::make_shared<int>(42);
std::weak_ptr<int> wp = sp;
assert(!wp.expired());

wp.reset();
assert(wp.expired());
assert(sp != nullptr);
```
