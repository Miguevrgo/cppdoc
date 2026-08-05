---
symbol: std::array::swap
header: <array>
since: C++11
---

Exchanges the contents of the array with those of `other`.

## Usage

```cpp
void swap(array& other) noexcept;
```

Exchanges the contents from the calling array to those of `other` array, it does not cause iterators and references to associate with the `other` array.

## Time complexity

Linear in the size of the array

## Examples

```cpp
#include <array>
#include <cassert>

std::array<int, 3> a1{1, 2, 3}, a2{4, 5, 6};
a1.swap(a2);

assert(a1.front() == 4);
```
