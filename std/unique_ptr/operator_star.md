---
symbol: std::unique_ptr::operator*
header: <memory>
since: C++11
---

Dereferences the managed object.

## Usage

```cpp
T& operator*() const;
```

Returns a reference to the object managed by `*this`. The behavior is undefined if `get() == nullptr`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <memory>

auto ptr = std::make_unique<int>(42);
assert(*ptr == 42);

*ptr = 7;
assert(*ptr == 7);
```
