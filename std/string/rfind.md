---
symbol: std::string::rfind
header: <string>
since: C++98
---

Finds the last occurrence of the given substring or character.

## Usage

```cpp
size_type rfind(const basic_string& str, size_type pos = npos) const noexcept; (1)
size_type rfind(const CharT* s, size_type pos = npos) const; (2)
size_type rfind(CharT ch, size_type pos = npos) const noexcept; (3)
```

Finds the last substring equal to the given character sequence, searching backward from `pos` (a match
starting after `pos` is not considered). Returns the position of the first character of the found
substring, or `std::string::npos` if not found.

## Time complexity

O(size() * str.size()) worst case, but typically much better.

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello, World, World!"};

assert(s.rfind("World") == 14);
assert(s.rfind('o') == 16);
assert(s.rfind("World", 10) == 7);
assert(s.rfind("xyz") == std::string::npos);
```
