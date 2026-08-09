---
symbol: std::unordered_map::contains
header: <unordered_map>
since: C++20
---

Checks if the unordered_map contains an element with the `key` provided.

## Usage

```cpp
bool contains(const Key& key) const; (1)
template<class K>
bool contains(const K& x) const; (2)
```

1. Returns `true` if there is an element with key equivalent to `key` in the unordered_map.
2. Returns `true` if there is an element with a key that compares equivalent to `x`, which can be of any type the unordered_map can compare against `Key`, so no `Key` has to be built for the lookup. Only available if both the hash and the equality predicate are transparent, which the default `std::hash` and `std::equal_to<Key>` are not.

## Time complexity

O(1) on average. Linear in the size of the unordered_map in the worst case.

## Examples

```cpp
#include <unordered_map>
#include <string>
#include <cassert>

std::unordered_map<std::string, int> values{{"a", 1}, {"b", 2}};

assert(values.contains("a"));
assert(!values.contains("z"));
```
