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

Returns the stored pointer, or a null pointer value if no object is managed. Does not release ownership.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <memory>

auto ptr = std::make_unique<int>(42);
assert(*ptr.get() == 42);

std::unique_ptr<int> empty;
assert(empty.get() == nullptr);
```
