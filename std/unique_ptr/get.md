---
symbol: std::unique_ptr::get
header: <memory>
since: C++11
---

Returns a pointer to the managed object.

## Usage

```cpp
pointer get() const noexcept;
```

Returns a pointer to the managed object, or `nullptr` if no object is owned.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <memory>

auto p = std::make_unique<int>(42);
int* raw = p.get();

assert(raw != nullptr);
assert(*raw == 42);
```
