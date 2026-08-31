---
symbol: std::string::erase
header: <string>
since: C++98
---

Erases characters from the string.

## Usage

```cpp
basic_string& erase(size_type index = 0, size_type count = npos); (1)
iterator erase(const_iterator first, const_iterator last);        (2)
```

1. Removes `count` characters starting at `index` (or up to the end of the string, whichever is shorter).
2. Removes the characters in `[first, last)`, returning an iterator to the character after the last one erased. A single-`pos` overload also exists.

## Exceptions

Throws `std::out_of_range` if `index > size()` for (1).

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello, World!"};
s.erase(5, 7); // (1) removes ", World"
assert(s == "Hello!");

s.erase(s.begin() + 1, s.begin() + 3); // (2) removes "el"
assert(s == "Hlo!");
```
