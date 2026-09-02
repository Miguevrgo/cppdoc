---
symbol: std::views::enumerate
header: <ranges>
since: C++23
---

Range adaptor that yields pairs containing an index and a reference to the element.

## Usage

```cpp
template<ranges::viewable_range R>
constexpr auto enumerate(R&& r);
```

Takes a view and produces a view of tuples where each element holds, the zero-based index of the element and a reference to the element.

## Time complexity

O(1) to construct the view; iteration complexity matches the underlying range.

## Examples

```cpp
#include <cassert>
#include <ranges>
#include <string_view>
#include <vector>

std::vector<std::string_view> names{"Alice", "Bob", "Charlie"};

for (const auto [idx, name] : names | std::views::enumerate) {
    if (idx == 0) assert(name == "Alice");
    if (idx == 1) assert(name == "Bob");
    if (idx == 2) assert(name == "Charlie");
}
```
