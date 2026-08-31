---
symbol: std::queue::empty
header: <queue>
since: C++98
---

Checks if the queue is empty.

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

std::queue<int> q;
assert(q.empty());

q.push(1);
assert(!q.empty());
```
