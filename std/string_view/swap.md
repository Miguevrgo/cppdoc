---
symbol: std::string_view::swap
header: <string_view>
since: C++17
---

Exchanges the view with `v`.

## Usage

```cpp
constexpr void swap(basic_string_view& v) noexcept;
```

Swaps the pointer and length with those of `v`. Neither view's underlying character data is read, modified, or moved.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string_view>

std::string_view a{"Hello"};
std::string_view b{"World"};

a.swap(b);

assert(a == "World");
assert(b == "Hello");
```
