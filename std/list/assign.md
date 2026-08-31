---
symbol: std::list::assign
header: <list>
since: C++98
---

Replaces the contents of the list.

## Usage

```cpp
void assign(size_type count, const T& value); (1)
template<class InputIt>
void assign(InputIt first, InputIt last);      (2)
void assign(std::initializer_list<T> ilist);   (3) [C++11]
```

1. Replaces the contents with `count` copies of `value`.
2. Replaces the contents with copies of the elements in range `[first, last)`. `first` and `last` must not be iterators into `*this`.
3. Replaces the contents with the elements of `ilist`.

All existing elements are destroyed and all iterators, pointers and references to them are invalidated.

## Exceptions

If an exception is thrown, the list is left in an unspecified but valid state (basic exception guarantee).

## Time complexity

Linear in the new size plus the old size.

## Examples

```cpp
#include <cassert>
#include <list>

std::list<int> l{1, 2};

l.assign(3, 9);
assert((l == std::list<int>{9, 9, 9}));

std::list<int> other{1, 2, 3, 4};
l.assign(++other.begin(), other.end());
assert((l == std::list<int>{2, 3, 4}));

l.assign({5, 6});
assert((l == std::list<int>{5, 6}));
```
