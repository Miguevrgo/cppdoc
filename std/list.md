---
symbol: std::list
header: <list>
since: C++98
---

Doubly-linked list supporting constant time insertion and removal anywhere within the sequence.

## Definition

```cpp
template<class T, class Allocator = std::allocator<T>>
class list;
```

Sequence container stored as separate heap nodes connected by forward and backward pointers. Compared to `std::forward_list` this container provides bidirectional iteration capability while being less space efficient.

## Examples

```cpp
#include <cassert>
#include <list>

std::list<int> l = {1, 3};
auto it = ++l.begin();
l.insert(it, 2);

assert(l.size() == 3);
assert(l.front() == 1);
assert(l.back() == 3);
```
