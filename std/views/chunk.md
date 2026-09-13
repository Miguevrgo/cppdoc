---
symbol: std::views::chunk
header: <ranges>
since: C++23
---

Range adaptor that splits a range into consecutive blocks of `n` elements.

## Usage

```cpp
template<ranges::viewable_range R>
constexpr auto chunk(R&& r, std::ranges::range_difference_t<R> n);
```

Produces a range of views (chunks) of the original view, such that each `chunk`, except maybe the last one has size `n`. Chunks are non-overlapping.

## Examples

```cpp
#include <cassert>
#include <ranges>
#include <vector>

std::vector<int> v{1, 2, 3, 4, 5};

std::vector<std::vector<int>> blocks;
for (auto block : v | std::views::chunk(2)) {
    blocks.emplace_back(block.begin(), block.end());
}

assert(blocks.size() == 3);
assert((blocks[0] == std::vector<int>{1, 2}));
assert((blocks[2] == std::vector<int>{5}));
```
