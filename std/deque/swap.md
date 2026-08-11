---
symbol: std::deque::swap
header: <deque>
since: C++98
---

Exchanges the contents of the deque with those of `other`.

## Usage

```cpp
void swap(deque& other);
```

All iterators and references remain valid, but now refer to the same element inside the other deque. Only `end()` is invalidated. Only block bookkeeping is exchanged, not the elements themselves.

## Time complexity

O(1)

## Examples

```cpp
#include <deque>
#include <cassert>

std::deque<int> a{1, 2, 3};
std::deque<int> b;

a.swap(b);

assert(a.empty());
assert(b.size() == 3);
```
