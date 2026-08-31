---
symbol: std::array::cend
header: <array>
since: C++11
---

Returns a constant iterator to the element following the last element of the array.

## Usage

```cpp
constexpr const_iterator cend() const noexcept;
```

Returns a `const_iterator` to the element past the last one, even when called on a non-const array. This element acts as a placeholder; attempting to dereference it results in undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <array>
#include <cassert>

std::array<int, 3> arr{1, 2, 3};

assert(arr.cend() - arr.cbegin() == 3);
```
