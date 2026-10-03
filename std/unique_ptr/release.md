---
symbol: std::unique_ptr::release
header: <memory>
since: C++11
---

Releases ownership of the managed object without destroying it.

## Usage

```cpp
pointer release() noexcept;
```

Releases ownership of the managed object. Returns the pointer to the object and sets `*this` to empty (`nullptr`).
The caller assumes responsibility for deleting the object.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <memory>

auto p = std::make_unique<int>(42);
int* raw = p.release();

assert(p == nullptr);
assert(*raw == 42);
delete raw;
```
