---
symbol: std::multimap::lower_bound
header: <map>
since: C++98
---

Returns an iterator to the first element with a key not less than the one provided.

## Usage

```cpp
iterator lower_bound(const Key& key); (1)
const_iterator lower_bound(const Key& key) const; (2)
template<class K>
iterator lower_bound(const K& x); (3) [C++14]
template<class K>
const_iterator lower_bound(const K& x) const; (4) [C++14]
```

1, 2. Returns an iterator to the first element whose key is not less than `key`, or `end()` if no such element exists. If several elements have a key equivalent to `key`, returns the first one, in insertion order.
3, 4. Same as (1, 2), but `x` can be of any type the multimap's comparator accepts, so no `Key` has to be built for the lookup. Only available if the comparator is transparent, like `std::less<>`.

## Time complexity

O(log n)

## Examples

```cpp
#include <cassert>
#include <map>

std::multimap<int, int> numbers{{1, 10}, {1, 20}, {3, 30}};
auto it = numbers.lower_bound(1);
assert(it->first == 1);
assert(it->second == 10); // first of the two elements with key 1

it = numbers.lower_bound(2);
assert(it->first == 3);
```
