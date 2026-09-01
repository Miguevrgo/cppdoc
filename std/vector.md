---
symbol: std::vector
header: <vector>
since: C++98
---

Sequence container that stores elements contiguously and can change size dynamically.

## Definition

```cpp
template<
    class T,
    class Allocator = std::allocator<T>
> class vector;
```

Elements are stored in a single contiguous block of memory. Growth is handled so when capacity is exceeded, a new larger block is allocated and the existing elements are moved or copied into it.

## Complexity

- Random access **O(1)**
- Insertion or removal at the end **O(1)** amortized
- Insertion or removal elsewhere **O(N)**

## Examples

```cpp
#include <cassert>
#include <vector>

std::vector<int> v{2, 3};
v.emplace_back(4);

assert(v.front() == 2);
assert(v.back() == 4);
assert(v[1] == 3);
assert(v.size() == 3);
```
