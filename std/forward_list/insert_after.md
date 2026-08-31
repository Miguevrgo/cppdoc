---
symbol: std::forward_list::insert_after
header: <forward_list>
since: C++11
---

Inserts elements immediately after the specified position in the list.

## Usage

```cpp
iterator insert_after(const_iterator pos, const T& value);                  (1)
iterator insert_after(const_iterator pos, size_type count, const T& value); (2)
```

1. Inserts a copy of `value` right after `pos`. O(1).
2. Inserts `count` copies of `value` right after `pos`. O(count). Move, range and initializer-list overloads also exist.

`pos` may be `before_begin()`. Every overload returns an iterator to the **last** element inserted, so results chain into further inserts.

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{1, 8};
auto it = fl.insert_after(fl.begin(), 9); // (1) right after 1
it = fl.insert_after(it, 2, 3);           // (2) two 3s after 9
assert((fl == std::forward_list<int>{1, 9, 3, 3, 8}));
```
