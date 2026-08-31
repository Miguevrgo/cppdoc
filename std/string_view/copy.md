---
symbol: std::string_view::copy
header: <string_view>
since: C++17
---

Copies a substring of characters into a character array.

## Usage

```cpp
constexpr size_type copy(CharT* dest, size_type count, size_type pos = 0) const;
```

Copies `std::min(count, size() - pos)` characters, starting at `pos`, to the character array pointed to by `dest`. No null terminator is appended. Returns the number of characters copied.

## Exceptions

`std::out_of_range` if `pos > size()`

## Time complexity

O(count)

## Examples

```cpp
#include <cassert>
#include <cstring>
#include <string_view>

std::string_view sv{"Hello, World!"};
char buf[6]{};

auto copied = sv.copy(buf, 5);
buf[copied] = '\0';

assert(copied == 5);
assert(std::strcmp(buf, "Hello") == 0);
```
