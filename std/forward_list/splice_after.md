---
symbol: std::forward_list::splice_after
header: <forward_list>
since: C++11
---

Transfers elements from another list into this one, right after a given position, without copying or moving them.

## Usage

```cpp
void splice_after(const_iterator pos, forward_list& other);                                           (1)
void splice_after(const_iterator pos, forward_list&& other);                                           (2)
void splice_after(const_iterator pos, forward_list& other, const_iterator it);                         (3)
void splice_after(const_iterator pos, forward_list&& other, const_iterator it);                        (4)
void splice_after(const_iterator pos, forward_list& other, const_iterator first, const_iterator last); (5)
void splice_after(const_iterator pos, forward_list&& other, const_iterator first, const_iterator last);(6)
```

1,2. Transfers all elements of `other` into `*this`, inserting them right after `pos`. `other` becomes empty. `other` must not be `*this`.
3,4. Transfers the single element right after `it` (the element `std::next(it)` refers to) from `other` into `*this`, inserting it right after `pos`. `other` may be `*this`. Does nothing if `pos == it` or `pos == std::next(it)`.
5,6. Transfers the elements in the open range `(first, last)` from `other` into `*this`, inserting them right after `pos`, in order. `first` and the element `last` refers to are themselves kept in `other`. If `other` is `*this`, `pos` must not be inside `(first, last)`.

Unlike `std::list::splice`, which takes an iterator to the element(s) being moved directly, `splice_after` always takes an iterator to the element *before* them, since a node in a singly-linked list cannot report its own predecessor. No elements are copied, moved, or destroyed, only internal pointers are relinked, so no iterators or references to the spliced elements are invalidated. `other` must use an allocator equal to that of `*this`.

## Time complexity

- (1,2) linear in the size of `other`
- (3,4) O(1)
- (5,6) linear in `std::distance(first, last)`

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> a{1, 2, 3};
std::forward_list<int> b{10, 20, 30};

a.splice_after(a.begin(), b); // moves all of b right after 1

assert((a == std::forward_list<int>{1, 10, 20, 30, 2, 3}));
assert(b.empty());
```

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{1, 2, 3, 4};

auto it = fl.begin();
++it; // points to 2, so std::next(it) points to 3

fl.splice_after(fl.before_begin(), fl, it); // moves 3 to the front

assert((fl == std::forward_list<int>{3, 1, 2, 4}));
```
