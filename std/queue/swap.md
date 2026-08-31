---
symbol: std::queue::swap
header: <queue>
since: C++11
---

Exchanges the contents of the queue with those of `other`.

## Usage

```cpp
void swap(queue& other) noexcept(/* see below */);
```

Swaps the underlying containers via an unqualified call to `swap(c, other.c)`. Noexcept if swapping the underlying containers does not throw.

## Time complexity

Depends on the underlying container's `swap`; O(1) for the default `std::deque`.

## Examples

```cpp
#include <cassert>
#include <queue>

std::queue<int> a;
a.push(1);
a.push(2);
std::queue<int> b;

a.swap(b);

assert(a.empty());
assert(b.size() == 2);
```
