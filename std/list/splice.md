---
symbol: std::list::splice
header: <list>
since: C++98
---

Transfers elements from another list into this one without copying or moving them.

## Usage

```cpp
void splice(const_iterator pos, list& other);                    (1)
void splice(const_iterator pos, list& other, const_iterator it); (2)
```

1. Transfers all elements of `other` into `*this`, inserting them before `pos`; `other` becomes empty. `other` must not be `*this`.
2. Transfers the single element pointed to by `it` from `other` into `*this`, inserting it before `pos`. `other` may be `*this`. A range overload also exists. Both are O(1); only pointers are relinked, so no iterators or references are invalidated.

## Examples

```cpp
#include <cassert>
#include <iterator>
#include <list>

std::list<int> a{1, 2, 3};
std::list<int> b{10, 20, 30};
a.splice(a.begin(), b); // (1) moves all of b to the front of a
assert((a == std::list<int>{10, 20, 30, 1, 2, 3}));
assert(b.empty());
auto it = std::next(a.begin(), 2); // points to 30
a.splice(a.begin(), a, it); // (2) moves 30 to the front, within the same list
assert((a == std::list<int>{30, 10, 20, 1, 2, 3}));
```
