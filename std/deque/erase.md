---
symbol: std::deque::erase
header: <deque>
since: C++98
---

Erases the specified element(s) from the deque.

## Usage

```cpp
iterator erase(const_iterator pos); (1)
iterator erase(const_iterator first, const_iterator last); (2)
```

1. Removes the element at `pos`.
2. Removes the elements in `[first, last)`. Returns an iterator following the last removed element, or `end()`.

## Time complexity

Linear in the distance between the erased element(s) and the nearer of `begin()` or `end()`.

## Examples

```cpp
#include <cassert>
#include <deque>

std::deque<int> values{1, 2, 3, 4, 5, 6};
auto it = values.erase(values.begin() + 1); // removes 2
assert(*it == 3);
values.erase(values.begin() + 2, values.begin() + 4); // removes 4, 5
assert((values == std::deque<int>{1, 3, 6}));
```
