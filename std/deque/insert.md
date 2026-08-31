---
symbol: std::deque::insert
header: <deque>
since: C++98
---

Inserts element(s) before `pos`.

## Usage

```cpp
iterator insert(const_iterator pos, const T& value); (1)
iterator insert(const_iterator pos, size_type count, const T& value); (2)
```

1. Inserts a copy of `value` before `pos`.
2. Inserts `count` copies of `value` before `pos`. Overloads for move, range and initializer-list insertion also exist.

## Time complexity

Linear in the number of elements inserted plus the distance to the nearer of `begin()` or `end()`.

## Examples

```cpp
#include <cassert>
#include <deque>

std::deque<int> values{1, 5};
values.insert(values.begin() + 1, 9);    // (1) single 9
values.insert(values.begin() + 2, 2, 3); // (2) two 3s
assert((values == std::deque<int>{1, 9, 3, 3, 5}));
```
