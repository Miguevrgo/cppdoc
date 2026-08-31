---
symbol: std::priority_queue::push
header: <queue>
since: C++98
---

Inserts an element into the priority queue and restores the heap invariant.

## Usage

```cpp
void push(const value_type& value); (1)
void push(value_type&& value); (2) [C++11]
```

Appends `value` to the underlying container, then calls `std::push_heap` to reposition it so the container remains a valid heap ordered by `Compare`.

1. The new element is initialized as a copy of `value`.
2. The new element is moved.

## Time complexity

O(log n): the underlying `push_back` (amortized O(1) for the default `std::vector`) plus `push_heap`'s O(log n) comparisons.

## Examples

```cpp
#include <cassert>
#include <queue>

std::priority_queue<int> pq;
pq.push(3);
pq.push(1);
pq.push(4);

assert(pq.top() == 4);
assert(pq.size() == 3);
```
