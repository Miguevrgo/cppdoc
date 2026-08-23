---
symbol: std::string_view::find
header: <string_view>
since: C++17
---

Finds the first occurrence of the given substring or character.

## Usage

```cpp
constexpr size_type find(basic_string_view v, size_type pos = 0) const noexcept; (1)
constexpr size_type find(CharT ch, size_type pos = 0) const noexcept; (2)
constexpr size_type find(const CharT* s, size_type pos, size_type count) const; (3)
constexpr size_type find(const CharT* s, size_type pos = 0) const; (4)
```

Finds the first substring equal to the given character sequence starting at `pos`.

Returns the position of the first character of the found substring, or `std::string_view::npos` if not found.

## Time complexity

O(size() * v.size()) worst case, but typically O(size()).

## Examples

```cpp
#include <cassert>
#include <string_view>

std::string_view sv{"Hello, World!"};

assert(sv.find("World") == 7);
assert(sv.find('o') == 4);
assert(sv.find('o', 5) == 8);
assert(sv.find("xyz") == std::string_view::npos);
```
