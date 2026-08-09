---
symbol: std::unordered_map::count
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

1. Returns the number of elements with key `key`. This is either 0 or 1 as unordered_map does not allow duplicates.
2. Returns the number of elements with a key that compares equivalent to `x`, which can be of any type the unordered_map can compare against `Key`, so no `Key` has to be built for the lookup. Only available if both the hash and the equality predicate are transparent, which the default `std::hash` and `std::equal_to<Key>` are not.

## Time complexity

O(1) on average. Linear in the size of the unordered_map in the worst case.

## Examples

```cpp
#include <unordered_map>
#include <string>
#include <cassert>

std::unordered_map<std::string, int> values{{"a", 1}, {"b", 2}};

assert(values.count("a") == 1);
assert(values.count("z") == 0);
```
