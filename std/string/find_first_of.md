---
symbol: std::string::find_first_of
header: <string>
since: C++98
---

Finds the first character equal to any character in the given set.

## Usage

```cpp
size_type find_first_of(const basic_string& str, size_type pos = 0) const noexcept; (1)
size_type find_first_of(const CharT* s, size_type pos = 0) const; (2)
size_type find_first_of(CharT ch, size_type pos = 0) const noexcept; (3)
```

Searches starting at `pos` for the first character that matches any character of `str` (treated as a
set, not a substring). Returns its position, or `std::string::npos` if none is found.

## Time complexity

O(size() * str.size()) worst case.

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello, World!"};

assert(s.find_first_of("aeiou") == 1);   // 'e'
assert(s.find_first_of(",!") == 5);      // ','
assert(s.find_first_of("xyz") == std::string::npos);
```
