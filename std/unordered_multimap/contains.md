---
symbol: std::unordered_multimap::contains
header: <unordered_map>
since: C++20
---

Checks if the unordered_multimap contains an element with the `key` provided.

## Usage

```cpp
bool contains(const Key& key) const; (1)
template<class K>
bool contains(const K& x) const; (2)
```

1. Returns `true` if there is an element with key equivalent to `key` in the unordered_multimap.
2. Returns `true` if there is an element with a key that compares equivalent to `x`, which can be of any type the unordered_multimap can compare against `Key`, so no `Key` has to be built for the lookup. Only available if both the hash and the equality predicate are transparent, which the default `std::hash` and `std::equal_to<Key>` are not.

Use `count` instead when the number of matches matters, `contains` only says whether there is at least one.

## Time complexity

O(1) on average. Linear in the size of the unordered_multimap in the worst case.

## Examples

```cpp
#include <unordered_map>
#include <string>
#include <cassert>

std::unordered_multimap<std::string, int> values{{"a", 1}, {"a", 2}, {"b", 3}};

assert(values.contains("a"));
assert(!values.contains("z"));
```
