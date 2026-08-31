---
symbol: std::forward_list::splice_after
header: <forward_list>
since: C++11
---

Transfers elements from another list into this one, right after a given position, without copying or moving them.

## Usage

```cpp
void splice_after(const_iterator pos, forward_list& other);                    (1)
void splice_after(const_iterator pos, forward_list& other, const_iterator it); (2)
```

1. Transfers all elements of `other` into `*this`, inserting them right after `pos`; `other` becomes empty. Linear in `other`'s size.
2. Transfers the single element right after `it` from `other` into `*this`, inserting it right after `pos`. O(1). A range overload also exists.

Only internal pointers are relinked, so no iterators or references to spliced elements are invalidated.

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> a{1, 2, 3};
std::forward_list<int> b{10, 20, 30};
a.splice_after(a.begin(), b); // (1) moves all of b right after 1
assert((a == std::forward_list<int>{1, 10, 20, 30, 2, 3}));
assert(b.empty());
auto it = a.begin(); // points to 1
a.splice_after(a.before_begin(), a, it); // (2) moves 10 (after it) to the front
assert((a == std::forward_list<int>{10, 1, 20, 30, 2, 3}));
```
