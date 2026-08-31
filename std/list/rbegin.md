---
symbol: std::list::rbegin
header: <list>
since: C++98
---

Returns a reverse iterator to the first element of the reversed list.

## Usage

```cpp
reverse_iterator rbegin();
const_reverse_iterator rbegin() const;
```

The returned iterator corresponds to the last element of the non-reversed list. If the list is empty, the returned iterator equals `rend()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <list>

std::list<int> l{1, 2, 3};

auto it = l.rbegin();
assert(*it == 3);
++it;
assert(*it == 2);
```
