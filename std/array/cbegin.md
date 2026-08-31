---
symbol: std::array::cbegin
header: <array>
since: C++11
---

Returns a constant iterator to the first element of the array.

## Usage

```cpp
constexpr const_iterator cbegin() const noexcept;
```

Returns a `const_iterator` to the first element, even when called on a non-const array. Useful to explicitly request a read-only iterator, e.g. with `auto`.

## Time complexity

O(1)

## Examples

```cpp
#include <array>
#include <cassert>

std::array<int, 3> arr{1, 2, 3};
auto it = arr.cbegin();

assert(*it == 1);
```
