---
symbol: std::string_view::rfind
header: <string_view>
since: C++17
---

Finds the last occurrence of the given substring or character.

## Usage

```cpp
constexpr size_type rfind(basic_string_view v, size_type pos = npos) const noexcept; (1)
constexpr size_type rfind(CharT ch, size_type pos = npos) const noexcept; (2)
constexpr size_type rfind(const CharT* s, size_type pos, size_type count) const; (3)
constexpr size_type rfind(const CharT* s, size_type pos = npos) const; (4)
```

Finds the last substring equal to the given character sequence, searching backward starting at `pos` (or from the end of the view if `pos` is `npos` or omitted).

Returns the position of the first character of the found substring, or `std::string_view::npos` if not found.

## Time complexity

O(size() * v.size()) worst case, but typically O(size()).

## Examples

```cpp
#include <cassert>
#include <string_view>

std::string_view sv{"abcabc"};

assert(sv.rfind("abc") == 3);
assert(sv.rfind('a') == 3);
assert(sv.rfind('a', 2) == 0);
assert(sv.rfind("xyz") == std::string_view::npos);
```
