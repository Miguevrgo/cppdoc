---
symbol: std::priority_queue::emplace
header: <queue>
since: C++11
---

Constructs an element in place and restores the heap invariant, forwarding `args` to its constructor.

## Usage

```cpp
template<class... Args>
void emplace(Args&&... args);
```

Constructs the new element directly in the underlying container via `c.emplace_back(std::forward<Args>(args)...)`, then calls `std::push_heap` to restore the heap invariant. Unlike `queue::emplace` and `stack::emplace`, this always returns `void`, since the newly constructed element does not necessarily end up at `top()`.

## Time complexity

O(log n)

## Examples

```cpp
#include <cassert>
#include <queue>

struct Task {
    int priority;
    Task(int p): priority(p) {}
    bool operator<(const Task& other) const { return priority < other.priority; }
};

std::priority_queue<Task> pq;
pq.emplace(3);
pq.emplace(1);
pq.emplace(5); // No temporary Task created

assert(pq.top().priority == 5);
```
