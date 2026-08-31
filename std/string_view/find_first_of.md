---
symbol: std::string_view::find_first_of
header: <string_view>
since: C++17
---

Finds the first character equal to any character in the given set.

## Usage

```cpp
constexpr size_type find_first_of(basic_string_view v, size_type pos = 0) const noexcept; (1)
constexpr size_type find_first_of(CharT ch, size_type pos = 0) const noexcept; (2)
constexpr size_type find_first_of(const CharT* s, size_type pos, size_type count) const; (3)
constexpr size_type find_first_of(const CharT* s, size_type pos = 0) const; (4)
```

Searches, starting at `pos`, for the first character that equals any character in `v`.

Returns the position of the found character, or `std::string_view::npos` if none is found.

## Time complexity

O(size() * v.size()) worst case.

## Examples

```cpp
#include <cassert>
#include <string_view>

std::string_view sv{"Hello, World!"};

assert(sv.find_first_of("lo") == 2);
assert(sv.find_first_of(",!") == 5);
assert(sv.find_first_of("xyz") == std::string_view::npos);
```
