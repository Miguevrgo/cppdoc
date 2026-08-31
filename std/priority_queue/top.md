---
symbol: std::priority_queue::top
header: <queue>
since: C++98
---

Returns a const reference to the top (largest, by default) element.

## Usage

```cpp
const_reference top() const;
```

Returns `c.front()`. Unlike `stack::top` or `queue::front`, only a `const` overload is provided, since mutating the element in place could break the heap invariant. Calling `top` on an empty priority_queue is undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <queue>

std::priority_queue<int> pq;
pq.push(3);
pq.push(1);
pq.push(4);

assert(pq.top() == 4);
```
