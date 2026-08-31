---
symbol: std::unordered_multiset::swap
header: <unordered_set>
since: C++11
---

Exchanges the contents of the unordered_multiset with those of `other`.

## Usage

```cpp
void swap(unordered_multiset& other);
```

All iterators and references remain valid, but now refer to the same element inside the other unordered_multiset. Only `end()` is invalidated.
No element is moved, copied or swapped, only the internal bookkeeping is exchanged.

## Time complexity

O(1)

## Examples

```cpp
#include <unordered_set>
#include <cassert>

std::unordered_multiset<int> a{1, 1, 2};
std::unordered_multiset<int> b;

a.swap(b);
assert(a.empty());
assert(b.size() == 3);
```
