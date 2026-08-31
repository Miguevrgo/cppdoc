---
symbol: std::multiset::equal_range
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

- 1, 2. Returns a pair of iterators equivalent to `{lower_bound(key), upper_bound(key)}`. Unlike `set`, this range can hold more than one element, in insertion order.
- 3, 4. Same as (1, 2), but `x` can be of any type the multiset's comparator accepts. Only available if the comparator is transparent, like `std::less<>`.

## Time complexity

O(log n)

## Examples

```cpp
#include <cassert>
#include <iterator>
#include <set>

std::multiset<int> s{10, 10, 30};

auto [first, last] = s.equal_range(10);
assert(std::distance(first, last) == 2);
assert(*first == 10);
assert(*last == 30);
```
