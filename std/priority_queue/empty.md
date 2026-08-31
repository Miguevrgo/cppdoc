---
symbol: std::priority_queue::empty
header: <queue>
since: C++98
---

Checks if the priority queue is empty.

## Usage

```cpp
bool empty() const;
```

Returns `c.empty()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <queue>

std::priority_queue<int> pq;
assert(pq.empty());

pq.push(1);
assert(!pq.empty());
```
