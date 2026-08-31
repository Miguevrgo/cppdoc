---
symbol: std::queue::push
header: <queue>
since: C++98
---

Adds an element to the end of the queue.

## Usage

```cpp
void push(const T& value); (1)
void push(T&& value); (2) [C++11]
```

Pushes `value` onto the end of the underlying container by calling `c.push_back(value)`.

1. The new element is initialized as a copy of `value`.
2. The new element is moved.

## Time complexity

Depends on the underlying container's `push_back`; amortized O(1) for the default `std::deque`.

## Examples

```cpp
#include <cassert>
#include <queue>
#include <utility>

std::queue<int> q;
q.push(1); // (1) value is copied

int x = 2;
q.push(std::move(x)); // (2) value is moved

assert(q.back() == 2);
assert(q.size() == 2);
```
