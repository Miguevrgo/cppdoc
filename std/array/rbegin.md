---
symbol: std::array::rbegin
header: <array>
since: C++11
---

Returns a reverse iterator to the first element of the reversed array.

## Usage

```cpp
constexpr reverse_iterator rbegin() noexcept; (1)
constexpr const_reverse_iterator rbegin() const noexcept; (2)
```

Returns a reverse iterator to the first element of the reversed array, which corresponds to the last element of the non-reversed array. If the array is empty, the returned iterator is equal to `rend()`.

## Time complexity

O(1)

## Examples

```cpp
#include <array>
#include <cassert>

std::array<int, 3> arr{1, 2, 3};

assert(*arr.rbegin() == 3);
```
