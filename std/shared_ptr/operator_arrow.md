---
symbol: std::shared_ptr::operator->
header: <memory>
since: C++11
---

Provides access to the members of the managed object.

## Usage

```cpp
T* operator->() const noexcept;
```

Returns the stored pointer, allowing member access on the managed object as if by `get()->`. The behavior is undefined if the stored pointer is null.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <memory>
#include <string>

auto ptr = std::make_shared<std::string>("hello");
assert(ptr->size() == 5);

ptr->append(" world");
assert(*ptr == "hello world");
```
