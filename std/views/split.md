---
symbol: std::views::split
header: <ranges>
since: C++20
---

Range adaptor that splits a range on a delimiter, yielding the subranges between delimiters.

## Usage

```cpp
template<ranges::viewable_range R, class Pattern>
constexpr auto split(R&& r, Pattern&& pattern);
```

`pattern` is either a single element or a range of elements to match. The delimiters themselves are not part of the result, and two adjacent delimiters produce an empty subrange.

## Examples

```cpp
#include <cassert>
#include <ranges>
#include <string>
#include <string_view>
#include <vector>

std::string_view line{"one,two,three"};

std::vector<std::string> fields;
for (auto part : line | std::views::split(',')) {
    fields.emplace_back(part.begin(), part.end());
}

assert((fields == std::vector<std::string>{"one", "two", "three"}));
```
