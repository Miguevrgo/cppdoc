---
symbol: std::set::swap
header: <set>
since: C++98
---

Exchanges the contents of the set with those of `other`.

## Usage

```cpp
void swap(set& other); (1) [C++98, until C++17]
void swap(set& other) noexcept(/* see below */); (1) [C++17]
```

All iterators and references remain valid, but now refer to elements in the other set. Only `end()` is invalidated. No element is moved, copied or compared; only the internal bookkeeping (and, if applicable, the allocators) is exchanged. Since C++17, the exception specification depends on whether the allocator propagates on swap and whether swapping the comparator can throw.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <set>

std::set<int> a{1, 2, 3};
std::set<int> b;

a.swap(b);

assert(a.empty());
assert(b.size() == 3);
```
