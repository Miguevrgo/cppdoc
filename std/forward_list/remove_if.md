---
symbol: std::forward_list::remove_if
header: <forward_list>
since: C++11
---

Removes all elements for which the given predicate returns `true`.

## Usage

```cpp
template<class UnaryPredicate>
void remove_if(UnaryPredicate p);       (1) [C++11, until C++20]
template<class UnaryPredicate>
size_type remove_if(UnaryPredicate p);  (1) [C++20]
```

Erases every element `e` for which `p(e)` evaluates to `true`. Since C++20, returns the number of elements removed.

## Time complexity

Exactly linear in the number of elements: one application of `p` per element.

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{1, 2, 3, 4, 5, 6};

fl.remove_if([](int n) { return n % 2 == 0; });

assert((fl == std::forward_list<int>{1, 3, 5}));
```
