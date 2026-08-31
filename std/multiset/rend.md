---
symbol: std::multiset::rend
header: <set>
since: C++98
---

Returns a reverse iterator to one before the first element of the reversed multiset.

## Usage

```cpp
reverse_iterator rend(); (1)
const_reverse_iterator rend() const; (2)
```

Corresponds to the position preceding the first element of the non-reversed multiset. This element acts as a placeholder and must not be dereferenced.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <set>

std::multiset<int> s{1, 2, 2};

auto it = s.rbegin();
++it;
++it;
assert(it != s.rend());
++it;
assert(it == s.rend());
```
