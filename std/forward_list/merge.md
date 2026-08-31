---
symbol: std::forward_list::merge
header: <forward_list>
since: C++11
---

Merges another sorted list into this one.

## Usage

```cpp
void merge(forward_list& other);               (1)
template<class Compare>
void merge(forward_list& other, Compare comp);  (2)
```

Merges `other` into `*this`, keeping the result sorted: (1) by `operator<`, (2) by `comp`. Both lists must already be sorted by that ordering. Nodes are relinked, not copied, so `other` ends up empty; O(N+M) comparisons. Rvalue-reference overloads also exist.

## Examples

```cpp
#include <cassert>
#include <forward_list>
#include <functional>

std::forward_list<int> a{1, 3, 5}, b{2, 4, 6};
a.merge(b); // (1) ascending
assert((a == std::forward_list<int>{1, 2, 3, 4, 5, 6}));
assert(b.empty());

std::forward_list<int> c{5, 3, 1}, d{6, 4, 2};
c.merge(d, std::greater<int>()); // (2) descending
assert((c == std::forward_list<int>{6, 5, 4, 3, 2, 1}));
```
