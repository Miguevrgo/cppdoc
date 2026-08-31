---
symbol: std::priority_queue::swap
header: <queue>
since: C++11
---

Exchanges the contents of the priority queue with those of `other`.

## Usage

```cpp
void swap(priority_queue& other) noexcept(/* see below */);
```

Swaps the underlying containers and comparators via unqualified calls to `swap(c, other.c)` and `swap(comp, other.comp)`. Noexcept if both of those swaps do not throw.

## Time complexity

Depends on the underlying container's `swap`; O(1) for the default `std::vector`.

## Examples

```cpp
#include <cassert>
#include <queue>

std::priority_queue<int> a;
a.push(1);
a.push(2);
std::priority_queue<int> b;

a.swap(b);

assert(a.empty());
assert(b.size() == 2);
```
