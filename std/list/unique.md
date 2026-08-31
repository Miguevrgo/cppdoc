---
symbol: std::list::unique
header: <list>
since: C++98
---

Removes consecutive duplicate elements, leaving only the first of each group.

## Usage

```cpp
void unique();                                (1) [C++98, until C++20]
size_type unique();                           (1) [C++20]
template<class BinaryPredicate>
void unique(BinaryPredicate p);               (2) [C++98, until C++20]
template<class BinaryPredicate>
size_type unique(BinaryPredicate p);          (2) [C++20]
```

1. Removes all but the first element from every group of consecutive elements that compare equal via `operator==`.
2. Same, but a pair of elements is considered equal when `p(a, b)` returns `true`, where `a` is the earlier of the two.

Only consecutive duplicates are removed; sort the list first to remove all duplicates regardless of position. Since C++20, returns the number of elements removed.

## Time complexity

Linear: exactly `size() - 1` comparisons, if the list is not empty.

## Examples

```cpp
#include <cassert>
#include <list>

std::list<int> l{1, 1, 2, 3, 3, 3, 1};

l.unique();

assert((l == std::list<int>{1, 2, 3, 1}));
```
