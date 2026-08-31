---
symbol: std::vector::data
header: <vector>
since: C++11
---

Returns a pointer to the underlying contiguous element storage.

## Usage

```cpp
T* data() noexcept; (1)
const T* data() const noexcept; (2)
```

Returns a pointer such that the range `[data(), data() + size())` is always a valid range, even if the vector is empty (in which case `data()` is not dereferenceable).

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <vector>

std::vector<int> vec{1, 2, 3};
int* p = vec.data();

assert(p[0] == 1 && p[1] == 2 && p[2] == 3);

p[0] = 10;
assert(vec[0] == 10);
```
