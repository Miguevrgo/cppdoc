---
symbol: std::reverse
header: <algorithm>
since: C++98
---

Reverses the order of the elements in the target range `[first, last)`.

## Usage

```cpp
template<class BidirIt>
void reverse(BidirIt first, BidirIt last); (1)
template<class ExecutionPolicy, class BidirIt>
void reverse(ExecutionPolicy&& policy, BidirIt first, BidirIt last); (2) [C++17]
```

Reverses the order of the elements in the target range `[first, last)`. Swaps each pair of corresponding elements using `std::iter_swap`. If 2, it is executed according to `policy`.

## Time complexity

O(N) where N is the size of the range, though exactly `std::distance(first, last) / 2` swaps are needed.

## Exceptions

(2) Can return `std::bad_alloc` if the resources for parallelization are not available, otherwise `std::terminate` if an uncaught exception is thrown.

## Examples

```cpp
#include <array>
#include <cassert>
#include <algorithm>

std::array<int, 4> v{1, 2, 3, 4};
std::reverse(v.begin(), v.end());
assert(v == std::array<int, 4>{4, 3, 2, 1});
```
