---
symbol: std::span
header: <span>
since: C++20
---

Non-owning view over a contiguous sequence of objects.

## Definition

```cpp
template<
    class T,
    std::size_t Extent = std::dynamic_extent
> class span;
```

A `span` stores a pointer and a size, so it can refer to a C array, a `std::array`, a `std::vector` or any contiguous range without copying it. `Extent` is the number of elements known at compile time, or `std::dynamic_extent` when the size is only known at run time.

## Examples

```cpp
#include <array>
#include <cassert>
#include <numeric>
#include <span>
#include <vector>

int sum(std::span<const int> data) {
    return std::accumulate(data.begin(), data.end(), 0);
}

std::vector<int> v{1, 2, 3};
std::array<int, 3> a{4, 5, 6};
int raw[]{7, 8, 9};

assert(sum(v) == 6);
assert(sum(a) == 15);
assert(sum(raw) == 24);
```
