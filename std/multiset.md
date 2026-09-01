---
symbol: std::multiset
header: <set>
since: C++98
---

Sorted associative container that contains a sorted set of objects of type `Key`, allowing multiple equivalent elements.

## Definition

```cpp
template<
    class Key,
    class Compare = std::less<Key>,
    class Allocator = std::allocator<Key>
> class multiset;
```

Like `set`, elements are sorted using the comparison function `Compare`, usually implemented as a red-black tree. Unlike `set`, elements do not need to be unique: `insert` never fails because of a duplicate key, so its overloads return a plain `iterator` instead of `std::pair<iterator, bool>`.

## Complexity

- O(Log N) Search
- O(Log N) Removal
- O(Log N) Insertion

## Examples

```cpp
#include <cassert>
#include <set>

std::multiset<int> s{3, 1, 4, 1, 5};
assert(s.size() == 5);
assert(s.count(1) == 2);
assert(*s.begin() == 1);
```
