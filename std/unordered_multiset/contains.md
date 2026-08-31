---
symbol: std::unordered_multiset::contains
header: <unordered_set>
since: C++20
---

Checks if the unordered_multiset contains an element equivalent to the `key` provided.

## Usage

```cpp
bool contains(const Key& key) const; (1)
template<class K>
bool contains(const K& x) const; (2)
```

1. Returns `true` if there is an element equivalent to `key` in the unordered_multiset.
2. Returns `true` if there is an element with a key that compares equivalent to `x`, which can be of any type the unordered_multiset can compare against `Key`, so no `Key` has to be built for the lookup. Only available if both the hash and the equality predicate are transparent, which the default `std::hash` and `std::equal_to<Key>` are not.

Use `count` instead when the number of matches matters, `contains` only says whether there is at least one.

## Time complexity

O(1) on average. Linear in the size of the unordered_multiset in the worst case.

## Examples

```cpp
#include <unordered_set>
#include <cassert>

std::unordered_multiset<int> values{1, 1, 2};

assert(values.contains(1));
assert(!values.contains(99));
```
