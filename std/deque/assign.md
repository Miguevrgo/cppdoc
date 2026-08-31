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
void assign(std::initializer_list<T> ilist); (3) [C++11]
```

1. Replaces the contents with `count` copies of `value`.
2. Replaces the contents with copies of the elements in range `[first, last)`.
3. Replaces the contents with the elements of `ilist`.

All existing elements are destroyed and all iterators, pointers and references to elements of the deque are invalidated.

## Exceptions

If an exception is thrown other than by the constructors, the assignment operators or any InputIt operation, the deque is left in an unspecified but valid state.

## Time complexity

Linear in the number of elements assigned.

## Examples

```cpp
#include <cassert>
#include <deque>

std::deque<int> values{1, 2, 3};

values.assign(4, 9); // (1)
assert((values == std::deque<int>{9, 9, 9, 9}));

std::deque<int> other{1, 2, 3};
values.assign(other.begin(), other.end()); // (2)
assert((values == std::deque<int>{1, 2, 3}));

values.assign({4, 5, 6}); // (3)
assert((values == std::deque<int>{4, 5, 6}));
```
