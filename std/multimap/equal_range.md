---
symbol: std::multimap::equal_range
header: <map>
since: C++98
---

Returns the range of elements matching the key provided.

## Usage

```cpp
std::pair<iterator, iterator> equal_range(const Key& key); (1)
std::pair<const_iterator, const_iterator> equal_range(const Key& key) const; (2)
template<class K>
std::pair<iterator, iterator> equal_range(const K& x); (3) [C++14]
template<class K>
std::pair<const_iterator, const_iterator> equal_range(const K& x) const; (4) [C++14]
```

1, 2. Returns a pair of iterators `{lower_bound(key), upper_bound(key)}`, delimiting the range of elements with key equivalent to `key`. Unlike `map`, this range can hold more than one element, in insertion order.
3, 4. Same as (1, 2), but `x` can be of any type the multimap's comparator accepts, so no `Key` has to be built for the lookup. Only available if the comparator is transparent, like `std::less<>`.

## Time complexity

O(log n)

## Examples

```cpp
#include <cassert>
#include <iterator>
#include <map>

std::multimap<int, int> numbers{{1, 10}, {1, 20}, {3, 30}};

auto [first, last] = numbers.equal_range(1);
assert(std::distance(first, last) == 2);
assert(first->first == 1);
assert(last->first == 3);
```
