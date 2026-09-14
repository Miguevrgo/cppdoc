---
symbol: std::views::transform
header: <ranges>
since: C++20
---

Range adaptor that yields the result of applying a function to every element.

## Usage

```cpp
template<ranges::viewable_range R, class F>
constexpr auto transform(R&& r, F fun);
```

`fun` is applied lazily, once per element and only while iterating. The view holds no storage for the results, so unlike `std::transform` nothing is written anywhere.

## Examples

```cpp
#include <cassert>
#include <ranges>
#include <vector>

std::vector<int> v{1, 2, 3};

auto squares = v | std::views::transform([](int n) { return n * n; });

auto result = squares | std::ranges::to<std::vector>();
assert((result == std::vector<int>{1, 4, 9}));
```
