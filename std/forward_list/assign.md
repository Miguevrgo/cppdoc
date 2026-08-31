---
symbol: std::forward_list::assign
header: <forward_list>
since: C++11
---

Replaces the contents of the list.

## Usage

```cpp
void assign(size_type count, const T& value); (1)
template<class InputIt>
void assign(InputIt first, InputIt last);      (2)
void assign(std::initializer_list<T> ilist);   (3)
```

1. Replaces the contents with `count` copies of `value`.
2. Replaces the contents with copies of the elements in range `[first, last)`. `first` and `last` must not be iterators into `*this`.
3. Replaces the contents with the elements of `ilist`.

All existing elements are destroyed and all iterators, pointers and references to them are invalidated (`before_begin()` remains valid, referring to the new front).

## Exceptions

If an exception is thrown, the list is left in an unspecified but valid state (basic exception guarantee).

## Time complexity

Linear in the new number of elements plus the old number of elements.

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{1, 2};

fl.assign(3, 9);
assert((fl == std::forward_list<int>{9, 9, 9}));

std::forward_list<int> other{1, 2, 3, 4};
fl.assign(++other.begin(), other.end());
assert((fl == std::forward_list<int>{2, 3, 4}));

fl.assign({5, 6});
assert((fl == std::forward_list<int>{5, 6}));
```
