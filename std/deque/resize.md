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

Resizes the deque to contain `count` elements. If the current size is greater than `count`, elements are removed from the end, otherwise:

1. Additional default-inserted elements are appended.
2. Additional copies of `value` are appended.

## Exceptions

If an exception is thrown the function has no effect. `std::length_error` is thrown if `count` exceeds `max_size()`.

## Time complexity

Linear in the difference between the current size and `count`.

## Examples

```cpp
#include <cassert>
#include <deque>

std::deque<int> values{2, 3, 4, 5, 6};
values.resize(4);
assert(values.size() == 4);
assert((values == std::deque<int>{2, 3, 4, 5}));
```

```cpp
#include <cassert>
#include <deque>

std::deque<int> values{2, 3, 4, 5, 6};
values.resize(8, 9);
assert(values.size() == 8);
assert((values == std::deque<int>{2, 3, 4, 5, 6, 9, 9, 9}));
```
