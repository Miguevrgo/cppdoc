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
```

1. Replaces the contents with `count` copies of `value`.
2. Replaces the contents with copies of `[first, last)`. An `initializer_list` overload (3) also exists.

All existing elements are destroyed and iterators invalidated. Linear time in the new and old size.

## Examples

```cpp
#include <cassert>
#include <list>

std::list<int> l{1, 2};
l.assign(3, 9); // (1)
assert((l == std::list<int>{9, 9, 9}));

std::list<int> other{1, 2, 3, 4};
l.assign(++other.begin(), other.end()); // (2)
assert((l == std::list<int>{2, 3, 4}));
```
