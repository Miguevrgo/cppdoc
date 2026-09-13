---
symbol: std::views::zip
header: <ranges>
since: C++23
---

Range adaptor that yields tuples of references to the elements of several ranges.

## Usage

```cpp
template<ranges::viewable_range... Rs>
constexpr auto zip(Rs&&... rs);
```

Takes one or more views and produces a single view whose `i`th element is a tuple-like value consisting of the `i`th element of all views.

## Examples

```cpp
#include <cassert>
#include <ranges>
#include <string_view>
#include <vector>

std::vector<std::string_view> names{"Alice", "Bob"};
std::vector<int> ages{30, 25, 40};

unsigned seen = 0;
for (const auto &[name, age] : std::views::zip(names, ages)) {
    if (name == "Alice") { assert(age == 30) };
    if (name == "Bob") { assert(age == 25) };
    ++seen;
}

assert(seen == 2);
```
