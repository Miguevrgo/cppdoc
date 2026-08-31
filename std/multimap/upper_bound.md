---
symbol: std::multimap::upper_bound
header: <map>
since: C++98
---

Returns an iterator to the first element with a key greater than the one provided.

## Usage

```cpp
iterator upper_bound(const Key& key); (1)
const_iterator upper_bound(const Key& key) const; (2)
template<class K>
iterator upper_bound(const K& x); (3) [C++14]
template<class K>
const_iterator upper_bound(const K& x) const; (4) [C++14]
```

1, 2. Returns an iterator to the first element whose key is greater than `key`, or `end()` if no such element exists. This is one past every element with a key equivalent to `key`.
3, 4. Same as (1, 2), but `x` can be of any type the multimap's comparator accepts, so no `Key` has to be built for the lookup. Only available if the comparator is transparent, like `std::less<>`.

## Time complexity

O(log n)

## Examples

```cpp
#include <cassert>
#include <map>

std::multimap<int, int> numbers{{1, 10}, {1, 20}, {3, 30}};

auto it = numbers.upper_bound(1);
assert(it->first == 3); // past both elements with key 1

it = numbers.upper_bound(3);
assert(it == numbers.end());
```
