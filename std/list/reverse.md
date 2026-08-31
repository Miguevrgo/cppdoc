---
symbol: std::list::reverse
header: <list>
since: C++98
---

Reverses the order of the elements in the list.

## Usage

```cpp
void reverse() noexcept;
```

No references, pointers or iterators to the elements are invalidated, only the order in which they are traversed changes.

## Time complexity

O(size())

## Examples

```cpp
#include <cassert>
#include <list>

std::list<int> l{1, 2, 3};

l.reverse();

assert((l == std::list<int>{3, 2, 1}));
```
