---
symbol: std::string::find_last_of
header: <string>
since: C++98
---

Finds the last character equal to any character in the given set.

## Usage

```cpp
size_type find_last_of(const basic_string& str, size_type pos = npos) const noexcept; (1)
size_type find_last_of(const CharT* s, size_type pos = npos) const; (2)
size_type find_last_of(CharT ch, size_type pos = npos) const noexcept; (3)
```

Searches backward from `pos` for the last character that matches any character of `str` (treated as a
set, not a substring). Returns its position, or `std::string::npos` if none is found.

## Time complexity

O(size() * str.size()) worst case.

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello, World!"};

assert(s.find_last_of("aeiou") == 8);    // 'o' in World
assert(s.find_last_of("lo") == 10);      // 'l' in World
assert(s.find_last_of("xyz") == std::string::npos);
```
