---
symbol: std::multiset::rbegin
header: <set>
since: C++98
---

Returns a reverse iterator to the first element of the reversed multiset.

## Usage

```cpp
reverse_iterator rbegin(); (1)
const_reverse_iterator rbegin() const; (2)
```

Corresponds to the last element of the non-reversed multiset, i.e. the greatest one. Elements are iterated in descending order; elements that compare equal appear in reverse insertion order. If the multiset is empty, the returned iterator equals `rend()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <set>

std::multiset<int> s{1, 2, 2, 3};

auto it = s.rbegin();
assert(*it == 3); // largest element first
```
