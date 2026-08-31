---
symbol: std::vector::assign
header: <vector>
since: C++98
---

Replaces the contents of the vector.

## Usage

```cpp
void assign(size_type count, const T& value); (1)
template<class InputIt>
void assign(InputIt first, InputIt last); (2)
```

1. Replaces the contents with `count` copies of `value`.
2. Replaces the contents with copies of `[first, last)`. An `initializer_list` overload (3) also exists.

All existing elements are destroyed and iterators invalidated. Linear time in the new and old size.

## Examples

```cpp
#include <cassert>
#include <vector>

std::vector<int> vec{1, 2, 3};
vec.assign(4, 9); // (1) four 9s
assert((vec == std::vector<int>{9, 9, 9, 9}));

std::vector<int> src{1, 2, 3};
vec.assign(src.begin(), src.end()); // (2) copy of the range
assert((vec == src));
```
