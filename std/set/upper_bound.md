---
symbol: std::set::upper_bound
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

- 1, 2. Returns an iterator to the first element with a key ordered strictly after `key`, or `end()` if no such element exists. Unlike `lower_bound`, an element equal to `key` does not qualify.
- 3, 4. Same as (1, 2), but `x` can be of any type the set's comparator accepts. Only available if the comparator is transparent, like `std::less<>`.

## Time complexity

O(log n)

## Examples

```cpp
#include <cassert>
#include <set>

std::set<int> s{10, 20, 30, 40};

assert(*s.upper_bound(20) == 30); // 20 itself does not qualify
assert(*s.upper_bound(25) == 30);
assert(s.upper_bound(40) == s.end());
```
