---
symbol: std::unordered_multimap
header: <unordered_map>
since: C++11
---

Associative container that contains key-value pairs organized into hash buckets, allowing duplicate keys.

## Definition

```cpp
template<
    class Key,
    class T,
    class Hash = std::hash<Key>,
    class KeyEqual = std::equal_to<Key>,
    class Allocator = std::allocator<std::pair<const Key, T>>
> class unordered_multimap;
```

Elements are stored in buckets based on their hash value, just like `unordered_map`, but any number of elements may share an equivalent key; elements with equivalent keys are adjacent to each other in iteration order. Unlike `unordered_map`, `unordered_multimap` has no `operator[]` or `at`, since there is no single element to return for a given key.

## Complexity

- O(1) Insert
- O(1) Search
- O(1) Removal

## Examples

```cpp
#include <cassert>
#include <string>
#include <unordered_map>

std::unordered_multimap<std::string, int> scores;
scores.emplace("Alice", 10);
scores.emplace("Alice", 20);
scores.emplace("Bob", 5);

assert(scores.size() == 3);
assert(scores.count("Alice") == 2);
assert(scores.contains("Bob"));
```
