---
symbol: std::string::replace
header: <string>
since: C++98
---

Replaces the specified portion of the string with other content.

## Usage

```cpp
basic_string& replace(size_type pos, size_type count, const basic_string& str);              (1)
basic_string& replace(const_iterator first, const_iterator last, const basic_string& str);    (2)
```

1. Replaces the `count` characters starting at `pos` with a copy of `str`. Overloads taking a `const CharT*` or a `count2`/`ch` pair also exist.
2. Replaces the characters in `[first, last)` with a copy of `str`.

## Exceptions

Throws `std::out_of_range` if `pos > size()` for the `pos`-based overloads.

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello, World!"};
s.replace(7, 5, std::string("there")); // (1)
assert(s == "Hello, there!");

s.replace(s.begin(), s.begin() + 5, std::string("Howdy")); // (2)
assert(s == "Howdy, there!");
```
