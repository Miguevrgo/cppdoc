---
symbol: std::array::empty
header: <array>
since: C++11
---

Checks if the array has no elements.

## Usage

```cpp
constexpr bool empty() const noexcept;
```

Returns `true` if the array is empty, `false` otherwise.

## Complexity

O(1)

## Examples

```cpp
#include <array>
#include <cassert>

std::array<int, 4> arr{1, 2, 3, 4};
assert(!arr.empty());

std::array<int, 0> arr2;
assert(arr2.empty());
```
