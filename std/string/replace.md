---
symbol: std::string::replace
header: <string>
since: C++98
---

Replaces the specified portion of the string with other content.

## Usage

```cpp
basic_string& replace(size_type pos, size_type count, const basic_string& str); (1)
basic_string& replace(size_type pos, size_type count, const CharT* s); (2)
basic_string& replace(size_type pos, size_type count, size_type count2, CharT ch); (3)
basic_string& replace(const_iterator first, const_iterator last, const basic_string& str); (4)
```

1. Replaces the `count` characters starting at `pos` with a copy of `str`.
2. Replaces the `count` characters starting at `pos` with the null-terminated character string `s`.
3. Replaces the `count` characters starting at `pos` with `count2` copies of `ch`.
4. Replaces the characters in the range `[first, last)` with a copy of `str`.

## Exceptions

`std::out_of_range` if `pos > size()` for the `pos`-based overloads. `std::length_error` if the
resulting size would exceed `max_size()`.

## Time complexity

Linear in the sum of the length of the replaced range and the length of the replacement, plus the
distance to the end of the string.

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello, World!"};
s.replace(7, 5, "there"); // (2)
assert(s == "Hello, there!");
```

```cpp
#include <cassert>
#include <string>

std::string s{"Hello, World!"};
s.replace(s.begin(), s.begin() + 5, std::string("Howdy")); // (4)
assert(s == "Howdy, World!");
```
