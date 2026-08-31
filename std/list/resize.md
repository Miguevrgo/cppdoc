---
symbol: std::list::resize
header: <list>
since: C++98
---

Resizes the list to contain `count` elements.

## Usage

```cpp
void resize(size_type count);                          (1)
void resize(size_type count, const value_type& value); (2)
```

If `count` is less than the current size, the list is reduced to its first `count` elements. If `count` is greater than the current size:

1. Additional value-initialized elements are appended.
2. Additional copies of `value` are appended.

## Exceptions

If an exception is thrown, this function has no effect.

## Time complexity

Linear in the difference between the current size and `count`.

## Examples

```cpp
#include <cassert>
#include <list>

std::list<int> l{1, 2, 3};

l.resize(5);
assert((l == std::list<int>{1, 2, 3, 0, 0}));

l.resize(2);
assert((l == std::list<int>{1, 2}));

l.resize(4, 9);
assert((l == std::list<int>{1, 2, 9, 9}));
```
