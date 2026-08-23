---
symbol: std::string_view::size
header: <string_view>
since: C++17
---

Returns the number elements in the view.

## Usage

```cpp
constexpr size_type size() const noexcept;
constexpr size_type length() const noexcept;
```

Returns the number of `CharT` elements in range `std::distance(begin(), end())`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string_view>

std::string_view sv{"Hello, World!"};
assert(sv.size() == 13);
assert(sv.length() == 13);
```
