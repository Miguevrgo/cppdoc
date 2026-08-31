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
```

1. Replaces the contents with `count` copies of `value`.
2. Replaces the contents with copies of `[first, last)`. An `initializer_list` overload (3) also exists.

All existing elements are destroyed and iterators invalidated. Linear time in the new and old size.

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{1, 2};
fl.assign(3, 9); // (1)
assert((fl == std::forward_list<int>{9, 9, 9}));

std::forward_list<int> other{1, 2, 3, 4};
fl.assign(++other.begin(), other.end()); // (2)
assert((fl == std::forward_list<int>{2, 3, 4}));
```
