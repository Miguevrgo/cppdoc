---
symbol: std::queue::front
header: <queue>
since: C++98
---

Returns a reference to the first element in the queue.

## Usage

```cpp
reference front();
const_reference front() const;
```

Returns `c.front()`, the first inserted element which has not been popped yet.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <queue>

std::queue<int> q;
q.push(1);
q.push(2);

assert(q.front() == 1);
q.front() = 9;
assert(q.front() == 9);
```
