---
symbol: std::forward_list::sort
header: <forward_list>
since: C++11
---

Sorts the elements of the list.

## Usage

```cpp
void sort();                     (1)
template<class Compare>
void sort(Compare comp);        (2)
```

1. Sorts elements in ascending order using `operator<`.
2. Sorts elements using `comp(a, b)` as the "less than" relation.

The sort is stable: equivalent elements preserve their relative order. Only the order of the elements changes, no references, pointers or iterators are invalidated.

## Time complexity

O(n log n) comparisons, where `n` is the number of elements.

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{3, 1, 4, 1, 5};

fl.sort();

assert((fl == std::forward_list<int>{1, 1, 3, 4, 5}));
```

```cpp
#include <cassert>
#include <forward_list>
#include <functional>

std::forward_list<int> fl{3, 1, 4, 1, 5};

fl.sort(std::greater<int>());

assert((fl == std::forward_list<int>{5, 4, 3, 1, 1}));
```
