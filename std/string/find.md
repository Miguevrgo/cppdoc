---
symbol: std::string::find
header: <string>
since: C++98
---

Finds the first occurrence of the given substring or character.

## Usage

```cpp
size_type find(const basic_string& str, size_type pos = 0) const noexcept; (1)
size_type find(const CharT* s, size_type pos = 0) const; (2)
size_type find(CharT ch, size_type pos = 0) const noexcept; (3)
```

Finds the first substring equal to the given character sequence, starting the search at `pos`. Returns
the position of the first character of the found substring, or `std::string::npos` if not found.

## Time complexity

O(size() * str.size()) worst case, but typically much better.

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello, World!"};

assert(s.find("World") == 7);
assert(s.find('o') == 4);
assert(s.find('o', 5) == 8);
assert(s.find("xyz") == std::string::npos);
```
