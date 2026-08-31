---
symbol: std::list::end
header: <list>
since: C++98
---

Returns an iterator to the element following the last element of the list.

## Usage

```cpp
iterator end();
const_iterator end() const;
```

The returned iterator acts only as a placeholder; dereferencing it is undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <list>

std::list<int> l{1, 2, 3};

auto it = l.end();
--it;
assert(*it == 3);
assert(l.begin() != l.end());
```
