---
symbol: std::forward_list::sort
header: <forward_list>
since: C++11
---

Sorts the elements of the list.

## Usage

```cpp
void sort();               (1)
template<class Compare>
void sort(Compare comp);   (2)
```

1. Sorts elements in ascending order using `operator<`.
2. Sorts elements using `comp(a, b)` as the "less than" relation.

Stable sort, O(n log n) comparisons; only element order changes, nothing is invalidated.

## Examples

```cpp
#include <cassert>
#include <forward_list>
#include <functional>

std::forward_list<int> fl{3, 1, 4, 1, 5};
fl.sort(); // (1)
assert((fl == std::forward_list<int>{1, 1, 3, 4, 5}));

fl.sort(std::greater<int>()); // (2)
assert((fl == std::forward_list<int>{5, 4, 3, 1, 1}));
```
