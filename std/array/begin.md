---
symbol: std::array::begin
header: <array>
since: C++11
---

Returns an iterator to the first element of the array.

## Usage

```cpp
constexpr iterator begin() noexcept; (1)
constexpr const_iterator begin() const noexcept; (2)
```

Returns an iterator to the first element. If the array is empty, the returned iterator is equal to `end()`.

## Time complexity

O(1)

## Examples

```cpp
#include <array>
#include <cassert>
#include <numeric>

std::array<int, 4> arr{1, 2, 3, 4};

assert(*arr.begin() == 1);
assert(std::accumulate(arr.begin(), arr.end(), 0) == 10);
```
