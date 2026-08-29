---
symbol: std::unordered_map
header: <unordered_map>
since: C++11
---

Associative container that contains key-value pairs with unique keys organized into hash buckets.

## Definition

```cpp
template<
    class Key,
    class T,
    class Hash = std::hash<Key>,
    class KeyEqual = std::equal_to<Key>,
    class Allocator = std::allocator<std::pair<const Key, T>>
> class unordered_map;
```

Elements are stored in buckets based on their hash value.

## Complexity

- O(1) Insert
- O(1) Search
- O(1) Removal

## Examples

```cpp
#include <cassert>
#include <string>
#include <unordered_map>

std::unordered_map<std::string, int> counts;
counts["apples"] = 5;
counts["bananas"] = 3;

assert(counts.size() == 2);
assert(counts["apples"] == 5);
assert(counts.contains("bananas"));
```
