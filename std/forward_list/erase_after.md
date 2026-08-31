---
symbol: std::forward_list::erase_after
header: <forward_list>
since: C++11
---

Removes the element(s) immediately after the specified position.

## Usage

```cpp
iterator erase_after(const_iterator pos);                        (1)
iterator erase_after(const_iterator first, const_iterator last); (2)
```

1. Removes the single element after `pos` (i.e. `std::next(pos)`); `pos` may be `before_begin()`. O(1).
2. Removes every element in `(first, last)`; `last` may be `end()`. O(distance).

Returns an iterator following the last element removed, or `end()`.

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{1, 2, 3, 4, 5};
auto it = fl.erase_after(fl.begin()); // removes 2
assert(*it == 3);
fl.erase_after(it, fl.end()); // removes everything after 3
assert((fl == std::forward_list<int>{1, 3}));
```
