---
symbol: std::set::rbegin
header: <set>
since: C++98
---

Returns a reverse iterator to the first element of the reversed set.

## Usage

```cpp
reverse_iterator rbegin(); (1) [C++98, until C++11]
reverse_iterator rbegin() noexcept; (1) [C++11]
const_reverse_iterator rbegin() const; (2) [C++98, until C++11]
const_reverse_iterator rbegin() const noexcept; (2) [C++11]
```

1, 2. Corresponds to the last element of the non-reversed set. If the set is empty, the returned iterator equals `rend()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <set>

std::set<int> s{1, 2, 3};

auto it = s.rbegin();
assert(*it == 3); // largest element first
```
