---
symbol: std::multiset::key_comp
header: <set>
since: C++98
---

Returns the comparison object used to order the keys in the multiset.

## Usage

```cpp
key_compare key_comp() const;
```

`key_compare` is the `Compare` template parameter of the multiset, defaulted to `std::less<Key>`. Since a multiset's `value_type` is `Key` itself, `key_comp()` and `value_comp()` return equivalent comparators.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <set>

std::multiset<int> s{3, 1, 1, 2};

auto comp = s.key_comp();
assert(comp(1, 2));
assert(!comp(2, 1));
```
