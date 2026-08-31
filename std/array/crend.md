---
symbol: std::array::crend
header: <array>
since: C++11
---

Returns a constant reverse iterator to the element following the last element of the reversed array.

## Usage

```cpp
constexpr const_reverse_iterator crend() const noexcept;
```

Returns a `const_reverse_iterator` to the element preceding the first element of the non-reversed array, even when called on a non-const array. This element acts as a placeholder; attempting to dereference it results in undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <array>
#include <cassert>

std::array<int, 3> arr{1, 2, 3};

assert(arr.crend() - arr.crbegin() == 3);
```
