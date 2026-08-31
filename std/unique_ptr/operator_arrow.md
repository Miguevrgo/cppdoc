---
symbol: std::unique_ptr::operator->
header: <memory>
since: C++11
---

Provides access to the members of the managed object.

## Usage

```cpp
pointer operator->() const noexcept;
```

Returns the stored pointer, allowing member access on the managed object as if by `get()`. The behavior is undefined if `get() == nullptr`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <memory>
#include <string>

auto ptr = std::make_unique<std::string>("hello");
assert(ptr->size() == 5);

ptr->append(" world");
assert(*ptr == "hello world");
```
