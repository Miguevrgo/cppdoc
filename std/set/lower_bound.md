---
symbol: std::set::lower_bound
header: <set>
since: C++98
---

Returns an iterator to the first element not less than the given key.

## Usage

```cpp
iterator lower_bound(const Key& key); (1)
const_iterator lower_bound(const Key& key) const; (2)
template<class K>
iterator lower_bound(const K& x); (3) [C++14]
template<class K>
const_iterator lower_bound(const K& x) const; (4) [C++14]
```

- 1, 2. Returns an iterator to the first element with a key that is not ordered before `key` (i.e. the first element `>= key`), or `end()` if no such element exists.
- 3, 4. Same as (1, 2), but `x` can be of any type the set's comparator accepts. Only available if the comparator is transparent, like `std::less<>`.

## Time complexity

O(log n)

## Examples

```cpp
#include <cassert>
#include <set>

std::set<int> s{10, 20, 30, 40};

assert(*s.lower_bound(25) == 30);
assert(*s.lower_bound(20) == 20); // 20 itself qualifies
assert(s.lower_bound(50) == s.end());
```
