---
symbol: std::set::rend
header: <set>
since: C++98
---

Returns a reverse iterator to the element following the last element of the reversed set.

## Usage

```cpp
reverse_iterator rend(); (1) [C++98, until C++11]
reverse_iterator rend() noexcept; (1) [C++11]
const_reverse_iterator rend() const; (2) [C++98, until C++11]
const_reverse_iterator rend() const noexcept; (2) [C++11]
```

1, 2. Corresponds to the position preceding the first element of the non-reversed set. This element acts as a placeholder and must not be dereferenced.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <set>

std::set<int> s{1, 2, 3};

auto it = s.rbegin();
++it;
++it;
assert(it != s.rend());
++it;
assert(it == s.rend());
```
