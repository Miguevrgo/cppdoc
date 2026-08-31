---
symbol: std::multiset::upper_bound
header: <set>
since: C++98
---

Returns an iterator to the first element greater than the given key.

## Usage

```cpp
iterator upper_bound(const Key& key); (1)
const_iterator upper_bound(const Key& key) const; (2)
template<class K>
iterator upper_bound(const K& x); (3) [C++14]
template<class K>
const_iterator upper_bound(const K& x) const; (4) [C++14]
```

- 1, 2. Returns an iterator to the first element with a key ordered strictly after `key`, or `end()` if no such element exists. This is one past every element equivalent to `key`.
- 3, 4. Same as (1, 2), but `x` can be of any type the multiset's comparator accepts. Only available if the comparator is transparent, like `std::less<>`.

## Time complexity

O(log n)

## Examples

```cpp
#include <cassert>
#include <set>

std::multiset<int> s{10, 10, 30, 40};

assert(*s.upper_bound(10) == 30); // past both elements equal to 10
assert(s.upper_bound(40) == s.end());
```
