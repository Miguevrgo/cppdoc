---
symbol: std::vector::reserve
header: <vector>
since: C++98
---

Increase the capacity of the vector to a value at least as big as the given value. It may reserve more so reallocation frequency is decreased.

## Usage

```cpp
void reserve(size_type new_cap);
```

Increases the capacity of the vector to at least `new_cap`, if `new_cap` is lower than current capacity it does nothing.

## Exceptions

`std::length_error` if `new_cap > max_size()`, also any exception related to the allocation. If an exception is thrown it has no effect.

## Time complexity

Linear with the size of the vector.

## Examples

```cpp
#include <vector>
#include <cassert>

std::vector<int> vec{2, 3, 4};
vec.reserve(8);
assert(vec.capacity() >= 8);
```

```cpp
#include <vector>
#include <cassert>

std::vector<int> vec{2, 3, 4, 5};
auto cap = vec.capacity();
vec.reserve(3);
assert(vec.capacity() == cap);
```
