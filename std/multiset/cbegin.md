---
symbol: std::multiset::cbegin
header: <set>
since: C++11
---

Returns a const iterator to the first element.

## Usage

```cpp
const_iterator cbegin() const;
```

Elements are iterated in ascending order; elements that compare equal appear in insertion order. If the multiset is empty, the returned iterator equals `cend()`. Behaves exactly like `begin() const`; it exists so that `auto it = s.cbegin();` yields a read-only iterator even when `s` is not itself const.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <set>

std::multiset<int> s{3, 1, 1, 2};

auto it = s.cbegin();
assert(*it == 1);
```
