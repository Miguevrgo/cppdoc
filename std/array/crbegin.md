---
symbol: std::array::crbegin
header: <array>
since: C++11
---

Returns a constant reverse iterator to the first element of the reversed array.

## Usage

```cpp
constexpr const_reverse_iterator crbegin() const noexcept;
```

Returns a `const_reverse_iterator` to the first element of the reversed array (the last element of the non-reversed array), even when called on a non-const array.

## Time complexity

O(1)

## Examples

```cpp
#include <array>
#include <cassert>

std::array<int, 3> arr{1, 2, 3};
auto it = arr.crbegin();

assert(*it == 3);
```
