---
symbol: std::array::operator[]
header: <array>
since: C++11
---

Accesses the element at specified index without bounds checking.

## Usage

```cpp
constexpr reference operator[](size_type pos); (1)
constexpr const_reference operator[](size_type pos) const; (2)
```

Returns a reference to the element at position `pos`. No bounds checking is performed. If `pos >= size()` behaviour was undefined until C++26, after that if the implementation is hardened a contract violation occurs.

## Time complexity

O(1)

## Examples

```cpp
#include <array>
#include <cassert>

std::array<int, 3> arr{1, 2, 3};

assert(arr[0] == 1);
arr[1] = 5;
assert(arr[1] == 5);
```
