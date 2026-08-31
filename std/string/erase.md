---
symbol: std::string::erase
header: <string>
since: C++98
---

Erases characters from the string.

## Usage

```cpp
basic_string& erase(size_type index = 0, size_type count = npos); (1)
iterator erase(const_iterator pos); (2)
iterator erase(const_iterator first, const_iterator last); (3)
```

1. Removes `count` characters starting at `index` (or up to the end of the string, whichever is
   shorter).
2. Removes the character at `pos`, returning an iterator to the character after the one erased.
3. Removes the characters in the range `[first, last)`, returning an iterator to the character after the
   last one erased.

## Exceptions

`std::out_of_range` if `index > size()` for (1).

## Time complexity

Linear in the number of characters erased plus the distance to the end of the string.

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello, World!"};
s.erase(5, 7); // (1) removes ", World"
assert(s == "Hello!");
```

```cpp
#include <cassert>
#include <string>

std::string s{"Hello"};
s.erase(s.begin() + 1, s.begin() + 3); // (3) removes "el"
assert(s == "Hlo");
```
