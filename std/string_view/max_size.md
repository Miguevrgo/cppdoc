---
symbol: std::string_view::max_size
header: <string_view>
since: C++17
---

Returns the maximum number of characters the view is theoretically able to refer to.

## Usage

```cpp
constexpr size_type max_size() const noexcept;
```

An implementation-defined theoretical upper bound on `size_type`, unrelated to the size of the data actually being viewed.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string_view>

std::string_view sv{"Hello"};

assert(sv.max_size() > sv.size());
```
