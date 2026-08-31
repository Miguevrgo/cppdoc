---
symbol: std::string::find_first_not_of
header: <string>
since: C++98
---

Finds the first character that does not match any character in the given set.

## Usage

```cpp
size_type find_first_not_of(const basic_string& str, size_type pos = 0) const noexcept; (1)
size_type find_first_not_of(const CharT* s, size_type pos = 0) const; (2)
size_type find_first_not_of(CharT ch, size_type pos = 0) const noexcept; (3)
```

Searches starting at `pos` for the first character that is not any character of `str` (treated as a
set). Returns its position, or `std::string::npos` if every remaining character matches.

## Time complexity

O(size() * str.size()) worst case.

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"   Hello"};

assert(s.find_first_not_of(' ') == 3);
assert(s.find_first_not_of("Helo ") == std::string::npos);
```
