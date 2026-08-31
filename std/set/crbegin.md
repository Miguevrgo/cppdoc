---
symbol: std::set::crbegin
header: <set>
since: C++11
---

Returns a const_reverse_iterator to the first element of the reversed set.

## Usage

```cpp
const_reverse_iterator crbegin() const noexcept;
```

Behaves exactly like `rbegin() const`, guaranteeing a read-only reverse iterator regardless of whether the set itself is const.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <set>

std::set<int> s{1, 2, 3};

auto it = s.crbegin();
assert(*it == 3);
```
