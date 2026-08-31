---
symbol: std::forward_list::resize
header: <forward_list>
since: C++11
---

Resizes the list to contain `count` elements.

## Usage

```cpp
void resize(size_type count);                          (1)
void resize(size_type count, const value_type& value); (2)
```

If `count` is less than the current number of elements, the list is reduced to its first `count` elements. If `count` is greater than the current number of elements:

1. Additional value-initialized elements are appended.
2. Additional copies of `value` are appended.

## Exceptions

If an exception is thrown, this function has no effect.

## Time complexity

Linear in the difference between the current number of elements and `count`.

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{1, 2, 3};

fl.resize(5);
assert((fl == std::forward_list<int>{1, 2, 3, 0, 0}));

fl.resize(2);
assert((fl == std::forward_list<int>{1, 2}));

fl.resize(4, 9);
assert((fl == std::forward_list<int>{1, 2, 9, 9}));
```
