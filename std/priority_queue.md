---
symbol: std::priority_queue
header: <queue>
since: C++98
---

Adaptor that provides constant-time access to the largest (by default) element, maintained as a binary heap over an underlying container.

## Definition

```cpp
template<
    class T,
    class Container = std::vector<T>,
    class Compare = std::less<typename Container::value_type>
> class priority_queue;
```

`priority_queue` is an adaptor, not a full container: it wraps an underlying container (`std::vector` by default) and keeps it ordered as a heap using `Compare` (`std::less<T>` by default, so the largest element is always at `top()`). It exposes only `push`, `pop`, `top`, `empty`, `size` — no iterators.

## Complexity

- Top **O(1)**
- Push/pop **O(log n)**

## Examples

```cpp
#include <cassert>
#include <queue>

std::priority_queue<int> pq;
pq.push(3);
pq.push(1);
pq.push(4);
assert(pq.top() == 4);
pq.pop();
assert(pq.top() == 3);
assert(pq.size() == 2);
```
