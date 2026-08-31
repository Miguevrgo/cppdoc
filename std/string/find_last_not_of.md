---
symbol: std::string::find_last_not_of
header: <string>
since: C++98
---

Finds the last character that does not match any character in the given set.

## Usage

```cpp
size_type find_last_not_of(const basic_string& str, size_type pos = npos) const noexcept; (1)
size_type find_last_not_of(const CharT* s, size_type pos = npos) const; (2)
size_type find_last_not_of(CharT ch, size_type pos = npos) const noexcept; (3)
```

Searches backward from `pos` for the last character that is not any character of `str` (treated as a
set). Returns its position, or `std::string::npos` if every character up to `pos` matches.

## Time complexity

O(size() * str.size()) worst case.

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello   "};

assert(s.find_last_not_of(' ') == 4);
assert(s.find_last_not_of("Helo ") == std::string::npos);
```
