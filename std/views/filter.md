---
symbol: std::views::filter
header: <ranges>
since: C++20
---

Range adaptor that yields the elements of a range satisfying a predicate.

## Usage

```cpp
template<ranges::viewable_range R, class Pred>
constexpr auto filter(R&& r, Pred pred);
```

The elements not satisfying `pred` are skipped during iteration. Nothing is copied and the predicate is only evaluated while iterating, so a filtered view over an unchanged range costs nothing until it is used.

## Examples

```cpp
#include <cassert>
#include <ranges>
#include <vector>

std::vector<int> v{1, 2, 3, 4, 5, 6};

auto even = v | std::views::filter([](int n) { return n % 2 == 0; });

auto result = even | std::ranges::to<std::vector>();
assert((result == std::vector<int>{2, 4, 6}));
```
