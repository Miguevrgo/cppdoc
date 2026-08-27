---
symbol: std::deque
header: <deque>
since: C++98
---

Double-ended queue that supports fast insertions and deletions at both ends with non-contiguous chunked storage.

## Definition

```cpp
template<class T, class Allocator = std::allocator<T>>
class deque;
```

Unlike `std::vector`, elements of a `deque` are not stored contiguously in a single buffer, but in a sequence of fixed-size chunks.

## Complexity

- Random access **O(1)**
- Insertion or removal end/beginning **O(1)**
- Insertion of removal of elements **O(n)**

## Examples

```cpp
#include <cassert>
#include <deque>

std::deque<int> d = {2, 3};
d.push_front(1);
d.push_back(4);

assert(d.front() == 1);
assert(d.back() == 4);
assert(d[1] == 2);
```
