---
symbol: std::set
header: <set>
since: C++98
---

Sorted associative container that contains a sorted set of unique objects of type `Key`.

## Definition

```cpp
template<
    class Key,
    class Compare = std::less<Key>,
    class Allocator = std::allocator<Key>
> class set;
```

Elements are sorted by using the comparison function `Compare`. Usually implemented as a red-black tree.

## Complexity

- O(Log N) Search
- O(Log N) Removal
- O(Log N) Insertion

## Examples

```cpp
#include <cassert>
#include <set>

std::set<int> s = {3, 1, 4, 1, 5};
assert(s.size() == 4);
assert(s.contains(3));
assert(*s.begin() == 1);
```
