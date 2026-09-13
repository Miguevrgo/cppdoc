---
symbol: std::views::drop
header: <ranges>
since: C++20
---

Range adaptor that skips the first `count` elements of a range.

## Usage

```cpp
template<ranges::viewable_range R>
constexpr auto drop(R&& r, std::ranges::range_difference_t<R> count);
```

If the range holds fewer than `count` elements, the result is empty. `std::views::drop_while` skips instead the leading elements satisfying a predicate.

## Time complexity

O(1) to construct the view on a random access range, O(count) otherwise.

## Examples

```cpp
#include <cassert>
#include <ranges>
#include <vector>

std::vector<int> v{1, 2, 3, 4, 5};

auto tail = v | std::views::drop(2);
auto result = tail | std::ranges::to<std::vector>();
assert((result == std::vector<int>{3, 4, 5}));

auto nothing = v | std::views::drop(99);
assert(nothing.empty());
```
