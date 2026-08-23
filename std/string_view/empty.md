---
symbol: std::string_view::empty
header: <string_view>
since: C++17
---

Checks whether the string view is empty.

## Usage

```cpp
constexpr bool empty() const noexcept;
```

Returns `true` if `size() == 0`, `false` otherwise.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string_view>

std::string_view sv1{""};
assert(sv1.empty());
std::string_view sv2{"Hello"};
assert(!sv2.empty());

```
