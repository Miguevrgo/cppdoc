---
symbol: std::unordered_set::count
header: <unordered_set>
since: C++11
---

Returns the number of elements with an equivalent key to the one provided.

## Usage

```cpp
size_type count(const Key& key) const; (1)
template<class K>
size_type count(const K& x) const; (2) [C++20]
```

1. Returns the number of elements with key `key`. This is either 0 or 1 as unordered_set does not allow duplicates.
2. Returns the number of elements with a key that compares equivalent to `x`, which can be of any type the unordered_set can compare against `Key`, so no `Key` has to be built for the lookup. Only available if both the hash and the equality predicate are transparent, which the default `std::hash` and `std::equal_to<Key>` are not.

## Time complexity

O(1) on average. Linear in the size of the unordered_set in the worst case.

## Examples

```cpp
#include <unordered_set>
#include <cassert>

std::unordered_set<int> values{1, 2, 3};

assert(values.count(1) == 1);
assert(values.count(9) == 0);
```
