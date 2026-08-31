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

Returns a newly constructed string with the substring `[pos, pos + count)`. If `pos + count` were to
exceed the string's size, the substring is `[pos, size())`.

## Exceptions

`std::out_of_range` if `pos > size()`.

## Time complexity

Linear in the length of the returned substring.

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello"};
assert(s.substr() == "Hello");
assert(s.substr(1) == "ello");
assert(s.substr(1, 2) == "el");
```

```cpp
#include <string>
#include <stdexcept>

std::string s{"Hello"};
try {
    auto tail = s.substr(666, 1);
} catch (std::out_of_range const& err) {
    // handle the out-of-range access
}
```
