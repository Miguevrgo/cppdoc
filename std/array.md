---
symbol: std::array
header: <array>
since: C++11
---

Sequential container that encapsulates fixed size arrays with contiguous storage.

## Definition

```cpp
template<class T, size_t N>
struct array;
```

Combines the performance and zero-overhead of a C-style array with the convenience of an STL container.

## Examples

```cpp
#include <array>
#include <cassert>

std::array<int, 3> arr{1, 2, 3};
assert(arr.size() == 3);
assert(arr[0] == 1);
assert(arr.back() == 3);
```
