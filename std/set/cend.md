---
symbol: std::set::cend
header: <set>
since: C++11
---

Returns a const_iterator to the element following the last element of the set.

## Usage

```cpp
const_iterator cend() const noexcept;
```

Behaves exactly like `end() const`. As with all set iterators, it does not refer to a real element and must not be dereferenced.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <set>

std::set<int> s{1, 2, 3};

assert(s.find(4) == s.cend());
```
