---
symbol: std::unordered_multiset::count
header: <unordered_set>
since: C++11
---

Returns the number of elements equivalent to the key provided.

## Usage

```cpp
size_type count(const Key& key) const; (1)
template<class K>
size_type count(const K& x) const; (2) [C++20]
```

1. Returns the number of elements equivalent to `key`, which for unordered_multiset can be any number.
2. Returns the number of elements with a key that compares equivalent to `x`, which can be of any type the unordered_multiset can compare against `Key`, so no `Key` has to be built for the lookup. Only available if both the hash and the equality predicate are transparent, which the default `std::hash` and `std::equal_to<Key>` are not.

## Time complexity

O(1) on average, plus linear in the number of elements found. Linear in the size of the unordered_multiset in the worst case.

## Examples

```cpp
#include <unordered_set>
#include <cassert>

std::unordered_multiset<int> values{1, 1, 2};

assert(values.count(1) == 2);
assert(values.count(99) == 0);
```
