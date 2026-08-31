---
symbol: std::string::insert
header: <string>
since: C++98
---

Inserts characters into the string at the specified position.

## Usage

```cpp
basic_string& insert(size_type index, const basic_string& str); (1)
iterator insert(const_iterator pos, size_type count, CharT ch); (2)
```

1. Inserts a copy of `str` before the character at `index`. Overloads taking a `const CharT*` or a single `ch` also exist.
2. Inserts `count` copies of `ch` before `pos`, returning an iterator to the first inserted character.

## Exceptions

Throws `std::out_of_range` if `index > size()` for the `index`-based overloads.

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello!"};
s.insert(5, std::string(", World")); // (1)
assert(s == "Hello, World!");

s.insert(s.end(), 3, '!'); // (2)
assert(s == "Hello, World!!!!");
```
