---
symbol: std::array::end
header: <array>
since: C++11
---

Returns an iterator to the element following the last element of the array.

## Usage

```cpp
constexpr iterator end() noexcept; (1)
constexpr const_iterator end() const noexcept; (2)
```

Returns an iterator to the element past the last one. This element acts as a placeholder; attempting to dereference it results in undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <array>
#include <cassert>

std::array<int, 3> arr{1, 2, 3};

assert(arr.end() - arr.begin() == 3);
assert(*(arr.end() - 1) == 3);
```
