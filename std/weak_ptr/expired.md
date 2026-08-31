---
symbol: std::weak_ptr::expired
header: <memory>
since: C++11
---

Checks whether the managed object has already been destroyed.

## Usage

```cpp
bool expired() const noexcept;
```

Equivalent to `use_count() == 0`. A default-constructed (empty) `weak_ptr` is also considered expired.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <memory>

auto sp = std::make_shared<int>(42);
std::weak_ptr<int> wp = sp;
assert(!wp.expired());

sp.reset();
assert(wp.expired());
```
