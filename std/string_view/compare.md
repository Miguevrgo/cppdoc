---
symbol: std::string_view::compare
header: <string_view>
since: C++17
---

Compares two character sequences

## Usage

```cpp
constexpr int compare(basic_string_view v) const noexcept; (1)
constexpr int compare(size_type pos1, size_type count1, basic_string_view v ) const; (2)
constexpr int compare(size_type pos1, size_type count1, basic_string_view v,
                       size_type pos2, size_type count2) const; (3)
constexpr int compare(const CharT* s) const; (4)
constexpr int compare(size_type pos1, size_type count1, const CharT* s) const; (5)
constexpr int compare(size_type pos1, size_type count1,
                       const CharT* s, size_type count2) const; (6)
```

1. The length is the smaller between both string_view involved. The value returned is as follows:
    - If `data()` is smaller, then `<0`
    - If they are equal, then `0`
    - If `data()` is larger, then `>0`
2. Equivalent to `substr(pos1, count1).compare(v).`
3. Equivalent to `substr(pos1, count1).compare(v.substr(pos2, count2)).`
4. Equivalent to `compare(basic_string_view(s)).`
5. Equivalent to `substr(pos1, count1).compare(basic_string_view(s)).`
6. Equivalent to `substr(pos1, count1).compare(basic_string_view(s, count2)).`

## Complexity

Linear in the number of characters compared

## Examples

```cpp
#include <string_view>
#include <cassert>

assert(std::string_view{"abc"}.compare(std::string_view{"abcd"}) < 0);
assert(std::string_view{"abc"}.compare(std::string_view{"abc"}) == 0);
assert(std::string_view{"abcd"}.compare(std::string_view{"abc"}) > 0);
```
