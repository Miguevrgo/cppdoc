---
symbol: std::multiset::swap
header: <set>
since: C++98
---

Exchanges the contents of the multiset with those of `other`.

## Usage

```cpp
void swap(multiset& other);
```

All iterators and references remain valid, but now refer to the same element inside the other multiset. Only `end()` is invalidated.

No element is moved, copied or compared, only the internal bookkeeping is exchanged.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <set>

std::multiset<int> a{1, 1, 2};
std::multiset<int> b;

a.swap(b);

assert(a.empty());
assert(b.size() == 3);
```
