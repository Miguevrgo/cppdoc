---
symbol: std::unordered_multimap::count
header: <unordered_map>
since: C++11
---

Returns the number of elements with an equivalent key to the one provided.

## Usage

```cpp
size_type count(const Key& key) const; (1)
template<class K>
size_type count(const K& x) const; (2) [C++20]
```

1. Returns the number of elements with key `key`, which for unordered_multimap can be any number.
2. Returns the number of elements with a key that compares equivalent to `x`, which can be of any type the unordered_multimap can compare against `Key`, so no `Key` has to be built for the lookup. Only available if both the hash and the equality predicate are transparent, which the default `std::hash` and `std::equal_to<Key>` are not.

## Time complexity

O(1) on average, plus linear in the number of elements found. Linear in the size of the unordered_multimap in the worst case.

## Examples

```cpp
#include <unordered_map>
#include <string>
#include <cassert>

std::unordered_multimap<std::string, int> values{{"a", 1}, {"a", 2}, {"b", 3}};

assert(values.count("a") == 2);
assert(values.count("z") == 0);
```
