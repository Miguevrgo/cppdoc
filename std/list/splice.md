---
symbol: std::list::splice
header: <list>
since: C++98
---

Transfers elements from another list into this one without copying or moving them.

## Usage

```cpp
void splice(const_iterator pos, list& other);                                         (1)
void splice(const_iterator pos, list&& other);                                        (2) [C++11]
void splice(const_iterator pos, list& other, const_iterator it);                       (3)
void splice(const_iterator pos, list&& other, const_iterator it);                      (4) [C++11]
void splice(const_iterator pos, list& other, const_iterator first, const_iterator last);  (5)
void splice(const_iterator pos, list&& other, const_iterator first, const_iterator last); (6) [C++11]
```

1,2. Transfers all elements of `other` into `*this`, inserting them before `pos`. `other` becomes empty. `other` must not be `*this`.
3,4. Transfers the single element pointed to by `it` from `other` into `*this`, inserting it before `pos`. `other` may be `*this`, in which case `pos` may equal `it`.
5,6. Transfers the elements in range `[first, last)` from `other` into `*this`, inserting them before `pos`. If `other` is `*this`, `pos` must not be an iterator in `[first, last)`.

No elements are copied, moved or destroyed, only internal pointers are relinked, so no iterators or references are invalidated. `other` must use an allocator equal to that of `*this`.

## Time complexity

- (1,2) O(1)
- (3,4) O(1)
- (5,6) O(1) if `other` refers to the same list as `*this`, otherwise O(std::distance(first, last))

## Examples

```cpp
#include <cassert>
#include <list>

std::list<int> a{1, 2, 3};
std::list<int> b{10, 20, 30};

a.splice(a.begin(), b); // moves all of b to the front of a

assert((a == std::list<int>{10, 20, 30, 1, 2, 3}));
assert(b.empty());
```

```cpp
#include <cassert>
#include <iterator>
#include <list>

std::list<int> l{1, 2, 3, 4};

auto it = l.begin();
std::advance(it, 2); // points to 3

l.splice(l.begin(), l, it); // moves 3 to the front, within the same list

assert((l == std::list<int>{3, 1, 2, 4}));
```
