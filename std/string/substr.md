---
symbol: std::string::substr
header: <string>
since: C++98
---

Returns a new string containing the substring `[pos, pos + count)`.

## Usage

```cpp
basic_string substr(size_type pos = 0, size_type count = npos) const;
```

Returns a newly constructed string with the substring `[pos, pos + count)`. If `pos + count` exceeds the string's size, the substring is `[pos, size())`.

## Exceptions

Throws `std::out_of_range` if `pos > size()`.

## Examples

```cpp
#include <cassert>
#include <stdexcept>
#include <string>

std::string s{"Hello"};
assert(s.substr() == "Hello");
assert(s.substr(1, 2) == "el");
try {
    auto tail = s.substr(666, 1); // throws std::out_of_range
} catch (std::out_of_range const&) {}
```
