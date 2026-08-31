---
symbol: std::stack::swap
header: <stack>
since: C++11
---

Exchanges the contents of the stack with those of `other`.

## Usage

```cpp
void swap(stack& other) noexcept(/* see below */);
```

Swaps the underlying containers via an unqualified call to `swap(c, other.c)`. Noexcept if swapping the underlying containers does not throw.

## Time complexity

Depends on the underlying container's `swap`; O(1) for the default `std::deque`.

## Examples

```cpp
#include <cassert>
#include <stack>

std::stack<int> a;
a.push(1);
a.push(2);
std::stack<int> b;

a.swap(b);

assert(a.empty());
assert(b.size() == 2);
```
