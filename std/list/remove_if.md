---
symbol: std::list::remove_if
header: <list>
since: C++98
---

Removes all elements for which the given predicate returns `true`.

## Usage

```cpp
template<class UnaryPredicate>
void remove_if(UnaryPredicate p);       (1) [C++98, until C++20]
template<class UnaryPredicate>
size_type remove_if(UnaryPredicate p);  (1) [C++20]
```

Erases every element `e` for which `p(e)` evaluates to `true`. Since C++20, returns the number of elements removed.

## Time complexity

Exactly `size()` applications of `p`.

## Examples

```cpp
#include <cassert>
#include <list>

std::list<int> l{1, 2, 3, 4, 5, 6};

l.remove_if([](int n) { return n % 2 == 0; });

assert((l == std::list<int>{1, 3, 5}));
```
