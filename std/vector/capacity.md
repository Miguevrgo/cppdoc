---
symbol: std::vector::capacity
header: <vector>
since: C++98
---

Return the number of elements the vector can hold without reallocating.

## Usage

```cpp
size_type capacity() const;
```

Returns the capacity of the vector as a `size_type`.

## Time complexity

O(1)

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
