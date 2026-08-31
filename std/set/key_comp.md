---
symbol: std::set::key_comp
header: <set>
since: C++98
---

Returns the comparison object used to order the keys in the set.

## Usage

```cpp
key_compare key_comp() const;
```

`key_compare` is the `Compare` template parameter of the set, defaulted to `std::less<Key>`. Since a set's `value_type` is `Key` itself, `key_comp()` and `value_comp()` return equivalent comparators.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <set>

std::set<int> s{3, 1, 2};

auto comp = s.key_comp();
assert(comp(1, 2));
assert(!comp(2, 1));
```
