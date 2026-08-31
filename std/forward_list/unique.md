---
symbol: std::forward_list::unique
header: <forward_list>
since: C++11
---

Removes consecutive duplicate elements, leaving only the first of each group.

## Usage

```cpp
void unique();                                (1) [C++11, until C++20]
size_type unique();                           (1) [C++20]
template<class BinaryPredicate>
void unique(BinaryPredicate p);               (2) [C++11, until C++20]
template<class BinaryPredicate>
size_type unique(BinaryPredicate p);          (2) [C++20]
```

1. Removes all but the first element from every group of consecutive elements that compare equal via `operator==`.
2. Same, but a pair of elements is considered equal when `p(a, b)` returns `true`, where `a` is the earlier of the two.

Only consecutive duplicates are removed; sort the list first to remove all duplicates regardless of position. Since C++20, returns the number of elements removed.

## Time complexity

Linear: exactly `n - 1` comparisons if the list is not empty, where `n` is the number of elements.

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{1, 1, 2, 3, 3, 3, 1};

fl.unique();

assert((fl == std::forward_list<int>{1, 2, 3, 1}));
```
