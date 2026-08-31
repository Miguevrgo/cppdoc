---
symbol: std::queue::back
header: <queue>
since: C++98
---

Returns a reference to the last element in the queue.

## Usage

```cpp
reference back();
const_reference back() const;
```

Returns `c.back()`, the most recently pushed element. Calling `back` on an empty queue is undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <queue>

std::queue<int> q;
q.push(1);
q.push(2);

assert(q.back() == 2);
q.back() = 9;
assert(q.back() == 9);
```
