---
symbol: std::string_view::operator[]
header: <string_view>
since: C++17
---

Accesses the character at specified index without bounds checking.

## Usage

```cpp
constexpr const_reference operator[](size_type pos) const;
```

Returns a const reference to the character at position `pos`. If `pos > size()` behaviour was undefined until C++26, after that if the implementation is hardened a contract violation occurs.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string_view>

std::string_view sv{"Hello"};
assert(sv[0] == 'H');
assert(sv[4] == 'o');
```
