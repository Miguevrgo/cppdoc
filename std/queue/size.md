---
symbol: std::queue::size
header: <queue>
since: C++98
---

Returns the number of elements in the queue.

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

std::queue<int> q;
assert(q.size() == 0);

q.push(1);
q.push(2);
assert(q.size() == 2);
```
