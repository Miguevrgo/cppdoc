---
symbol: std::deque::resize
header: <deque>
since: C++98
---

Resizes the deque in-place so that its `size` is equal to `count`.

## Usage

```cpp
void resize(size_type count); (1)
void resize(size_type count, const value_type& value); (2)
```

If the current size is greater than `count`, elements are removed from the end, otherwise additional elements are appended: (1) default-inserted, (2) copies of `value`.

## Time complexity

Linear in the difference between the current size and `count`.

## Examples

```cpp
#include <cassert>
#include <deque>

std::deque<int> values{2, 3, 4, 5, 6};
values.resize(4);
assert((values == std::deque<int>{2, 3, 4, 5}));

values.resize(6, 9);
assert((values == std::deque<int>{2, 3, 4, 5, 9, 9}));
```
