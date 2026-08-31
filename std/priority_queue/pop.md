---
symbol: std::priority_queue::pop
header: <queue>
since: C++98
---

Removes the top (largest, by default) element from the priority queue.

## Usage

```cpp
void pop();
```

Calls `std::pop_heap` to move the top element to the end of the underlying container, then `c.pop_back()` to remove it. Calling `pop` on an empty priority_queue is undefined behavior.

## Time complexity

O(log n)

## Examples

```cpp
#include <cassert>
#include <queue>

std::priority_queue<int> pq;
pq.push(3);
pq.push(1);
pq.push(4);

pq.pop();

assert(pq.top() == 3);
assert(pq.size() == 2);
```
