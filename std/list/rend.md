---
symbol: std::list::rend
header: <list>
since: C++98
---

Returns a reverse iterator to the element preceding the first element of the reversed list.

## Usage

```cpp
reverse_iterator rend();
const_reverse_iterator rend() const;
```

This corresponds to the element preceding the first element of the non-reversed list. The returned iterator acts only as a placeholder; dereferencing it is undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <list>

std::list<int> l{1, 2, 3};

auto it = l.rend();
--it;
assert(*it == 1);
assert(l.rbegin() != l.rend());
```
