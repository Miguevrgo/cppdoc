---
symbol: std::views::take
header: <ranges>
since: C++20
---

Range adaptor that yields the first `count` elements of a range.

## Usage

```cpp
template<ranges::viewable_range R>
constexpr auto take(R&& r, std::ranges::range_difference_t<R> count);
```

Yields the first `count` elements of the range or the whole range if smaller.

## Examples

```cpp
#include <cassert>
#include <ranges>
#include <vector>

std::vector<int> v{1, 2, 3, 4, 5};

auto first_three = v | std::views::take(3);
auto result = first_three | std::ranges::to<std::vector>();
assert((result == std::vector<int>{1, 2, 3}));

auto all = v | std::views::take(99);
assert(std::ranges::distance(all) == 5);
```
