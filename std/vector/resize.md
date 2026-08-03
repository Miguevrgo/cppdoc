---
symbol: std::vector::resize
header: <vector>
since: C++98
---

Resizes the vector in-place so that the `size` is equal to `count`.

## Usage

```cpp
void resize(size_type count); (1)
void resize(size_type count, const value_type& value); (2)
```

Resizes the vector to contain `count` elements, if the current size is smaller, the vector is reduced, otherwise:

1. The vector is filled with default-inserted elements.
2. The vector is filled with copies of `value`.

## Exceptions

If an exception is thrown the function has no effect. `std::length_error` is thrown if the capacity required by the new vector would exceed `max_size()`.

## Time complexity

Linear in the difference between current size and `count`. Additional complexity is possible due to reallocation if capacity is less than `count`.

## Examples

```cpp
#include <vector>
#include <cassert>

std::vector<int> vec{2, 3, 4, 5, 6};
vec.resize(4);
assert(vec.size() == 4);
assert((vec == std::vector<int>{2, 3, 4, 5}));
```

```cpp
#include <vector>
#include <cassert>

std::vector<int> vec{2, 3, 4, 5, 6};
vec.resize(6);
assert(vec.size() == 6);
assert((vec == std::vector<int>{2, 3, 4, 5, 6, 0}));
```
