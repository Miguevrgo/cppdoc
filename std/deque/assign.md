---
symbol: std::deque::assign
header: <deque>
since: C++98
---

Replaces the contents of the deque.

## Usage

```cpp
void assign(size_type count, const T& value); (1)
template<class InputIt>
void assign(InputIt first, InputIt last); (2)
```

1. Replaces the contents with `count` copies of `value`.
2. Replaces the contents with copies of `[first, last)`. All existing elements are destroyed and iterators invalidated.

## Time complexity

Linear in the number of elements assigned.

## Examples

```cpp
#include <cassert>
#include <deque>

std::deque<int> values{1, 2, 3};
values.assign(4, 9); // (1)
assert((values == std::deque<int>{9, 9, 9, 9}));
values.assign({1, 2, 3}); // initializer_list overload also exists
assert((values == std::deque<int>{1, 2, 3}));
```
