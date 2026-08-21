---
symbol: std::string_view::data
header: <string_view>
since: C++17
---

Returns a pointer to the underlying character array.

## Usage

```cpp
constexpr const_pointer data() const noexcept;
```

Returns a pointer to the underlying character array. The pointer is such that the range
`[data(), data() + size())` is valid.

The pointer is not necessarily null-terminated, avoid the common mistake to pass data() to
a routine expecting `const CharT*` expecting a null-terminated string.

## Complexity

O(1)

## Examples

```cpp
#include <string_view>
#include <cassert>

std::string_view str_v{"Hello"};
std::string str(str_v.data(), str_v.size())
```
