---
symbol: std::views::iota
header: <ranges>
since: C++20
---

Range factory that yields a sequence of increasing values.

## Usage

```cpp
template<class W>
constexpr auto iota(W value); (1)

template<class W, class Bound>
constexpr auto iota(W value, Bound bound); (2)
```

1. An infinite range starting at `value`, each element the increment of the previous one.
2. A range of the values in `[value, bound)`.

## Time complexity

O(1) to construct the view; no storage is allocated.

## Examples

```cpp
#include <cassert>
#include <ranges>
#include <vector>

auto digits = std::views::iota(0, 5);
auto result = digits | std::ranges::to<std::vector>();
assert((result == std::vector<int>{0, 1, 2, 3, 4}));

auto squares = std::views::iota(1)
             | std::views::transform([](int n) { return n * n; })
             | std::views::take(3);
auto first = squares | std::ranges::to<std::vector>();
assert((first == std::vector<int>{1, 4, 9}));
```
