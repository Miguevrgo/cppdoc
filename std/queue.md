---
symbol: std::queue
header: <queue>
since: C++98
---

This containers provides the functionality of a queue, i.e, a FIFO data structure.

## Definition

```cpp
template<class T, class Container = std::deque<T>>
class queue;
```

`queue` is an adaptor from the underlying `std::deque`, with some additional functions provided, the queue pushes and pops the elements from the front.

## Complexity

- Push **O(1)**
- Pop **O(1)**
- Top **O(1)**

## Examples

```cpp
#include <cassert>
#include <queue>

std::queue<int> q{1};
q.push(2);
q.push(3);

assert(q.front() == 1);
assert(q.back() == 3);

q.pop();
assert(q.front() == 2);
assert(q.size() == 2);
```
