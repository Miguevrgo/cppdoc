---
symbol: std::set::cbegin
header: <set>
since: C++11
---

Returns a const_iterator to the first element of the set.

## Usage

```cpp
const_iterator cbegin() const noexcept;
```

Behaves exactly like `begin() const`. It exists so that `auto it = s.cbegin();` yields a read-only iterator even when `s` is not itself const, and so generic code can request a const iterator explicitly.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <set>

std::set<int> s{3, 1, 2};

auto it = s.cbegin();
assert(*it == 1);
```
