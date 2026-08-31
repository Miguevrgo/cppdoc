---
symbol: std::set::equal_range
header: <set>
since: C++98
---

Returns the range of elements matching the given key.

## Usage

```cpp
std::pair<iterator, iterator> equal_range(const Key& key); (1)
std::pair<const_iterator, const_iterator> equal_range(const Key& key) const; (2)
template<class K>
std::pair<iterator, iterator> equal_range(const K& x); (3) [C++14]
template<class K>
std::pair<const_iterator, const_iterator> equal_range(const K& x) const; (4) [C++14]
```

- 1, 2. Returns a pair of iterators equivalent to `{lower_bound(key), upper_bound(key)}`. Since a set never stores duplicate keys, this range contains either zero or one element.
- 3, 4. Same as (1, 2), but `x` can be of any type the set's comparator accepts. Only available if the comparator is transparent, like `std::less<>`.

## Time complexity

O(log n)

## Examples

```cpp
#include <cassert>
#include <iterator>
#include <set>

std::set<int> s{10, 20, 30};
auto [first, last] = s.equal_range(20);
assert(std::distance(first, last) == 1);
assert(*first == 20);
auto [first2, last2] = s.equal_range(25);
assert(first2 == last2); // empty range, key not found
```
