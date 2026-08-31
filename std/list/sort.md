---
symbol: std::list::sort
header: <list>
since: C++98
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

O(N log N) comparisons, where N = `size()`.

## Examples

```cpp
#include <cassert>
#include <list>

std::list<int> l{3, 1, 4, 1, 5};

l.sort();

assert((l == std::list<int>{1, 1, 3, 4, 5}));
```

```cpp
#include <cassert>
#include <functional>
#include <list>

std::list<int> l{3, 1, 4, 1, 5};

l.sort(std::greater<int>());

assert((l == std::list<int>{5, 4, 3, 1, 1}));
```
