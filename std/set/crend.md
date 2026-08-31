---
symbol: std::set::crend
header: <set>
since: C++11
---

Returns a const_reverse_iterator to the element following the last element of the reversed set.

## Usage

```cpp
const_reverse_iterator crend() const noexcept;
```

Behaves exactly like `rend() const`. This element acts as a placeholder and must not be dereferenced.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <iterator>
#include <set>

std::set<int> s{1, 2, 3};

assert(std::next(s.crbegin(), 3) == s.crend());
```
