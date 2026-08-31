---
symbol: std::weak_ptr::use_count
header: <memory>
since: C++11
---

Returns the number of `shared_ptr` instances managing the observed object.

## Usage

```cpp
long use_count() const noexcept;
```

Returns 0 if the managed object has already been destroyed, or if `*this` is empty.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <memory>

auto sp = std::make_shared<int>(42);
std::weak_ptr<int> wp = sp;
assert(wp.use_count() == 1);

auto sp2 = sp;
assert(wp.use_count() == 2);

sp.reset();
sp2.reset();
assert(wp.use_count() == 0);
```
