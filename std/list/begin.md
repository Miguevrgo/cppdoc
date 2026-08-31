---
symbol: std::list::begin
header: <list>
since: C++98
---

Returns an iterator to the first element of the list.

## Usage

```cpp
iterator begin();
const_iterator begin() const;
```

If the list is empty, the returned iterator equals `end()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <list>

std::list<int> l{1, 2, 3};

auto it = l.begin();
assert(*it == 1);

const std::list<int> cl{4, 5};
assert(*cl.begin() == 4);
```
