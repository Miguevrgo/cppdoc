---
symbol: std::array::rend
header: <array>
since: C++11
---

Returns a reverse iterator to the element following the last element of the reversed array.

## Usage

```cpp
constexpr reverse_iterator rend() noexcept; (1)
constexpr const_reverse_iterator rend() const noexcept; (2)
```

Returns a reverse iterator to the element preceding the first element of the non-reversed array. This element acts as a placeholder; attempting to dereference it results in undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <array>
#include <cassert>

std::array<int, 3> arr{1, 2, 3};

assert(arr.rend() - arr.rbegin() == 3);
assert(*(arr.rend() - 1) == 1);
```
