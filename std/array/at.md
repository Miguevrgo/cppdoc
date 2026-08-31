---
symbol: std::array::at
header: <array>
since: C++11
---

Returns a reference to the element at `pos`, with bounds checking.

## Usage

```cpp
constexpr reference at(size_type pos); (1)
constexpr const_reference at(size_type pos) const; (2)
```

Returns a reference to the element at `pos`. If `pos` is not within the array, `std::out_of_range` is thrown.

## Exceptions

`std::out_of_range` if `pos >= size()`.

## Time complexity

O(1)

## Examples

```cpp
#include <array>
#include <cassert>
#include <stdexcept>

std::array<int, 3> arr{1, 2, 3};
assert(arr.at(0) == 1);
try {
  arr.at(3);
  assert(false);
} catch (const std::out_of_range&) {
}
```
