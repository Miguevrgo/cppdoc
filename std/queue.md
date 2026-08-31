---
symbol: std::queue
header: <queue>
since: C++98
---

FIFO (first-in, first-out) adaptor that provides push/pop/front/back access over an underlying container.

## Definition

```cpp
template<class T, class Container = std::deque<T>>
class queue;
```

`queue` is an adaptor, not a full container: it wraps an underlying container (`std::deque` by default) and exposes only the operations needed for FIFO access — `push`, `pop`, `front`, `back`, `empty`, `size` — no iterators.

## Complexity

- Push/pop/front/back **O(1)** (assuming the underlying container's corresponding operations are O(1), true for the default `std::deque`)

## Examples

```cpp
#include <cassert>
#include <queue>

std::queue<int> q;
q.push(1);
q.push(2);
q.push(3);

assert(q.front() == 1);
assert(q.back() == 3);

q.pop();
assert(q.front() == 2);
assert(q.size() == 2);
```
