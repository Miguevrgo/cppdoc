---
symbol: std::views::join
header: <ranges>
since: C++20
---

Range adaptor that flattens a range of ranges into a single range.

## Usage

```cpp
template<ranges::viewable_range R>
constexpr auto join(R&& r);
```

Returns a view consisting of the sequence obtained from flattening a view of ranges.

## Examples

```cpp
#include <cassert>
#include <ranges>
#include <string>
#include <vector>

std::vector<std::vector<int>> nested{{1, 2}, {3}, {4, 5}};

auto flat = nested | std::views::join;
auto result = flat | std::ranges::to<std::vector>();
assert((result == std::vector<int>{1, 2, 3, 4, 5}));
```
