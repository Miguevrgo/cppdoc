---
symbol: std::priority_queue::size
header: <queue>
since: C++98
---

Returns the number of elements in the priority queue.

## Usage

```cpp
size_type size() const;
```

Returns `c.size()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <queue>

std::priority_queue<int> pq;
assert(pq.size() == 0);

pq.push(1);
pq.push(2);
assert(pq.size() == 2);
```
