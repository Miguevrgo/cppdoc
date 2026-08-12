---
symbol: std::list::swap
header: <list>
since: C++98
---

Exchanges the contents of the list with those of `other`.

## Usage

```cpp
void swap(list& other);
```

All iterators and references remain valid, but now refer to the same element inside the other list. Only `end()` is invalidated. Only block bookkeeping is exchanged, not the elements themselves.

## Time complexity

O(1)

## Examples

```cpp
#include <list>
#include <cassert>

std::list<int> a{1, 2, 3};
std::list<int> b;

a.swap(b);

assert(a.empty());
assert(b.size() == 3);
```
