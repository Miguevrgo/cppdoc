---
symbol: std::unordered_multiset
header: <unordered_set>
since: C++11
---

Associative container that contains objects of type `Key` organized into hash buckets, allowing duplicate keys.

## Definition

```cpp
template<
    class Key,
    class Hash = std::hash<Key>,
    class KeyEqual = std::equal_to<Key>,
    class Allocator = std::allocator<Key>
> class unordered_multiset;
```

Elements are stored in buckets based on their hash value, just like `unordered_set`, but any number of elements may compare equivalent to each other; equivalent elements are adjacent to each other in iteration order. Like `unordered_set`, `unordered_multiset` has no `operator[]` or `at`, since elements are their own keys.

## Complexity

- O(1) Insert
- O(1) Search
- O(1) Removal

## Examples

```cpp
#include <cassert>
#include <unordered_set>

std::unordered_multiset<int> ids = {10, 20, 20, 30};
assert(ids.size() == 4);
assert(ids.count(20) == 2);
assert(ids.contains(30));
```
