---
symbol: std::unordered_set
header: <unordered_set>
since: C++11
---

Associative container that contains a set of unique objects of type `Key` organized into hash buckets.

## Definition

```cpp
template<
    class Key,
    class Hash = std::hash<Key>,
    class KeyEqual = std::equal_to<Key>,
    class Allocator = std::allocator<Key>
> class unordered_set;
```

Elements are stored in buckets based on their hash value.

## Complexity

- O(1) Insert
- O(1) Search
- O(1) Removal

## Examples

```cpp
#include <cassert>
#include <unordered_set>

std::unordered_set<int> ids = {10, 20, 30};
assert(ids.size() == 3);
assert(ids.contains(20));
assert(!ids.contains(99));
```
