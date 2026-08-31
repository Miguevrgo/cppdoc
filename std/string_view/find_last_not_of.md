---
symbol: std::string_view::find_last_not_of
header: <string_view>
since: C++17
---

Finds the last character not equal to any character in the given set.

## Usage

```cpp
constexpr size_type find_last_not_of(basic_string_view v, size_type pos = npos) const noexcept; (1)
constexpr size_type find_last_not_of(CharT ch, size_type pos = npos) const noexcept; (2)
constexpr size_type find_last_not_of(const CharT* s, size_type pos, size_type count) const; (3)
constexpr size_type find_last_not_of(const CharT* s, size_type pos = npos) const; (4)
```

Searches backward, starting at `pos` (or from the end of the view if `pos` is `npos` or omitted), for the last character that does not equal any character in `v`.

Returns the position of the found character, or `std::string_view::npos` if every character matches `v`.

## Time complexity

O(size() * v.size()) worst case.

## Examples

```cpp
#include <cassert>
#include <string_view>

std::string_view sv{"Hello   "};

assert(sv.find_last_not_of(' ') == 4);
assert(sv.find_last_not_of("Helo ") == std::string_view::npos);
```
