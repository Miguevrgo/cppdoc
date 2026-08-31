---
symbol: std::forward_list
header: <forward_list>
since: C++11
---

Singly-linked list supporting constant time insertion and removal anywhere in the sequence, given a preceding position.

## Definition

```cpp
template<class T, class Allocator = std::allocator<T>>
class forward_list;
```

Each node stores only a pointer to the next node, giving `forward_list` less per-node overhead than the doubly-linked `std::list`. Iteration is forward-only: there is no `rbegin`/`rend`. Because a node cannot report its predecessor, the container has no `size()`, no `back()`, and no `push_back`/`pop_back`/`emplace_back`. Operations that in `std::list` take an iterator to the target element instead take an iterator to the element *before* it — `before_begin`, `insert_after`, `erase_after`, `emplace_after`, `splice_after` — since only the next node is reachable from any given position.

## Complexity

- Insertion or removal right after a known position **O(1)**
- Access to an arbitrary element **O(n)**
- No random access, no reverse iteration, no `size()`

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl = {2, 3};
fl.push_front(1);
fl.insert_after(fl.begin(), 99); // right after the first element (1)

auto it = fl.begin();
assert(*it == 1); ++it;
assert(*it == 99); ++it;
assert(*it == 2); ++it;
assert(*it == 3);
```
