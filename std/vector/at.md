---
symbol: std::vector::at
header: <vector>
since: C++98
---

Returns a reference to the element at `pos`, with bounds checking.

## Usage

```cpp
reference at(size_type pos); (1)
const_reference at(size_type pos) const; (2)
```

Returns a reference to the element at `pos`. If `pos >= size()`, `std::out_of_range` is thrown.

## Exceptions

`std::out_of_range` if `pos >= size()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <stdexcept>
#include <vector>

std::vector<int> vec{1, 2, 3};

assert(vec.at(0) == 1);
vec.at(1) = 20;
assert(vec.at(1) == 20);

try {
  vec.at(3);
  assert(false);
} catch (const std::out_of_range&) {
}
```
