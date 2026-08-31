---
symbol: std::queue::pop
header: <queue>
since: C++98
---

Removes the element at the front of the queue.

## Usage

```cpp
void pop();
```

Calls `c.pop_front()` on the underlying container, removing the least-recently-pushed element. Calling `pop` on an empty queue is undefined behavior.

## Time complexity

Depends on the underlying container's `pop_front`; O(1) for the default `std::deque`.

## Examples

```cpp
#include <cassert>
#include <queue>

std::queue<int> q;
q.push(1);
q.push(2);

q.pop();

assert(q.front() == 2);
assert(q.size() == 1);
```
