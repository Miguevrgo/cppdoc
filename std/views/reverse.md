---
symbol: std::views::reverse
header: <ranges>
since: C++20
---

Range adaptor that yields the elements of a bidirectional range in reverse order.

## Usage

```cpp
template<ranges::viewable_range R>
constexpr auto reverse(R&& r);
```

The underlying range is left untouched, unlike `std::reverse` which rewrites it in place. Reversing an already reversed view gives the original one back.

## Examples

```cpp
#include <cassert>
#include <ranges>
#include <vector>

std::vector<int> v{1, 2, 3, 4};

auto backwards = v | std::views::reverse;
auto result = backwards | std::ranges::to<std::vector>();

assert((result == std::vector<int>{4, 3, 2, 1}));
assert((v == std::vector<int>{1, 2, 3, 4}));
```
