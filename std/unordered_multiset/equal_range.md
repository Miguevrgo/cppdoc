---
symbol: std::unordered_multiset::equal_range
header: <unordered_set>
since: C++11
---

Returns the range of elements matching the key provided.

## Usage

```cpp
std::pair<iterator, iterator> equal_range(const Key& key); (1)
std::pair<const_iterator, const_iterator> equal_range(const Key& key) const; (2)
template<class K>
std::pair<iterator, iterator> equal_range(const K& x); (3) [C++20]
template<class K>
std::pair<const_iterator, const_iterator> equal_range(const K& x) const; (4) [C++20]
```

1, 2. Returns a pair of iterators delimiting the range `[first, last)` of all elements equivalent to `key`. If there are no such elements, both iterators are equal and point to a location where such an element would be inserted, but not necessarily `end()`. All equivalent elements are guaranteed to be adjacent.
3, 4. Same as (1, 2), but `x` can be of any type the unordered_multiset can compare against `Key`, so no `Key` has to be built for the lookup. Only available if both the hash and the equality predicate are transparent, which the default `std::hash` and `std::equal_to<Key>` are not.

## Time complexity

O(1) on average, plus linear in the number of elements found. Linear in the size of the unordered_multiset in the worst case.

## Examples

```cpp
#include <cassert>
#include <iterator>
#include <unordered_set>

std::unordered_multiset<int> numbers{1, 3, 3, 5};

auto [first, last] = numbers.equal_range(3);
assert(std::distance(first, last) == 2);
for (auto it = first; it != last; ++it) assert(*it == 3);
```
