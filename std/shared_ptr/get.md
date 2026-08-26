---
symbol: std::shared_ptr::get
header: <memory>
since: C++11
---

Returns a pointer to the managed object.

## Usage

```cpp
element_type* get() const noexcept;
```

Returns the stored raw pointer to the managed object, or `nullptr` if no object is managed.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <memory>

auto ptr = std::make_shared<int>(42);
assert(*ptr.get() == 42);
auto ptr2 = ptr;
*ptr2 = 43
assert(*ptr.get() == 43);
```
