---
symbol: std::forward_list::merge
header: <forward_list>
since: C++11
---

Merges another sorted list into this one.

## Usage

```cpp
void merge(forward_list& other);                    (1)
void merge(forward_list&& other);                   (2)
template<class Compare>
void merge(forward_list& other, Compare comp);      (3)
template<class Compare>
void merge(forward_list&& other, Compare comp);     (4)
```

Merges `other` into `*this`. Both lists must already be sorted with respect to the same ordering (`operator<` for (1,2), `comp` for (3,4)). Elements are transferred out of `other` by relinking nodes, not by copying or moving them, so `other` is empty after the call and existing iterators to the transferred elements remain valid, now referring to `*this`. The merge is stable: for equal elements, those from `*this` are placed before those from `other`. If `&other == this`, the function does nothing.

## Exceptions

Only throws if `comp` throws; the elements themselves are not constructed, so their constructors are never invoked.

## Time complexity

At most `N + M - 1` comparisons, where `N` and `M` are the number of elements in `*this` and `other`; no comparisons at all if either list is empty.

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> a{1, 3, 5};
std::forward_list<int> b{2, 4, 6};

a.merge(b);

assert((a == std::forward_list<int>{1, 2, 3, 4, 5, 6}));
assert(b.empty());
```

```cpp
#include <cassert>
#include <forward_list>
#include <functional>

std::forward_list<int> a{5, 3, 1};
std::forward_list<int> b{6, 4, 2};

a.merge(b, std::greater<int>());

assert((a == std::forward_list<int>{6, 5, 4, 3, 2, 1}));
```
