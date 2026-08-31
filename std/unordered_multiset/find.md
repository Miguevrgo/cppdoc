---
symbol: std::unordered_multiset::find
header: <unordered_set>
since: C++11
---

Finds an element with the key provided.

## Usage

```cpp
iterator find(const Key& key); (1)
const_iterator find(const Key& key) const; (2)
template<class K>
iterator find(const K& x); (3) [C++20]
template<class K>
const_iterator find(const K& x) const; (4) [C++20]
```

1, 2. Returns an iterator to an element equivalent to `key`, or `end()` if there is none. If several elements are equivalent, any one of them may be returned; use `equal_range` to get all of them.
3, 4. Same as (1, 2), but `x` can be of any type the unordered_multiset can compare against `Key`, so no `Key` has to be built for the lookup. Only available if both the hash and the equality predicate are transparent, which the default `std::hash` and `std::equal_to<Key>` are not.

## Time complexity

O(1) on average. Linear in the size of the unordered_multiset in the worst case.

## Examples

```cpp
#include <unordered_set>
#include <cassert>

std::unordered_multiset<int> values{1, 1, 2};

auto it = values.find(1);
assert(it != values.end());
assert(*it == 1);
assert(values.find(99) == values.end());
```
