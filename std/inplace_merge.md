---
symbol: std::inplace_merge
header: <algorithm>
since: C++98
---

Merges two consecutive sorted ranges `[first, middle)` and `[middle, last)` into a single sorted range.

## Usage

```cpp
template<class BidirectionalIt>
void inplace_merge(BidirectionalIt first, BidirectionalIt middle, BidirectionalIt last); (1)

template<class BidirectionalIt, class Compare>
void inplace_merge(BidirectionalIt first, BidirectionalIt middle, BidirectionalIt last,
                   Compare comp); (2)
```

Merges the consecutive sorted ranges `[first, middle)` and `[middle, last)` in-place so that `[first, last)` becomes sorted. The merge is stable.

## Time complexity

- **O(N)** if additional internal memory buffer is available (where `N = last - first`).
- **O(N log N)** comparisons if no additional memory is available.

## Examples

```cpp
#include <algorithm>
#include <cassert>
#include <vector>

std::vector<int> v{1, 3, 5, 2, 4, 6};

std::inplace_merge(v.begin(), v.begin() + 3, v.end());

assert((v == std::vector<int>{1, 2, 3, 4, 5, 6}));
```
