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

1. Removes the single element immediately after `pos` (the element `std::next(pos)` refers to). `pos` itself is kept and may be `before_begin()`.
2. Removes every element in the open range `(first, last)` — that is, all elements strictly between `first` and `last`. The elements `first` and `last` refer to are themselves kept; `last` may be `end()`.

Returns an iterator to the element following the last one removed, or `end()` if there was none. Only iterators and references to the erased elements are invalidated.

## Time complexity

- (1) O(1)
- (2) O(std::distance(first, last))

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{1, 2, 3, 4};

auto it = fl.erase_after(fl.begin()); // removes 2, the element after 1

assert(*it == 3);
assert((fl == std::forward_list<int>{1, 3, 4}));
```

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{1, 2, 3, 4, 5};

auto first = fl.begin(); // points to 1
fl.erase_after(first, fl.end()); // removes everything after 1

assert((fl == std::forward_list<int>{1}));
```
