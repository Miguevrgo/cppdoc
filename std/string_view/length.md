---
symbol: std::string_view::length
header: <string_view>
since: C++17
---

Returns the number of characters in the view.

## Usage

```cpp
constexpr size_type size() const noexcept;
constexpr size_type length() const noexcept;
```

`length()` is a synonym for `size()`; both return the number of `CharT` elements in the view.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string_view>

std::string_view sv{"Hello, World!"};

assert(sv.length() == 13);
assert(sv.size() == 13);
```
