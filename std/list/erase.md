---
symbol: std::list::erase
header: <list>
since: C++98
---

Removes the specified element(s) from the list.

## Usage

```cpp
iterator erase(const_iterator pos);                       (1)
iterator erase(const_iterator first, const_iterator last); (2)
```

1. Removes the element at `pos`.
2. Removes the elements in range `[first, last)`.

Returns an iterator to the element following the last removed element, or `end()` if there was none. Only iterators and references to the erased elements are invalidated.

## Time complexity

- (1) O(1)
- (2) O(std::distance(first, last))

## Examples

```cpp
#include <cassert>
#include <list>

std::list<int> l{1, 2, 3, 4};

auto it = l.begin();
++it;
it = l.erase(it); // removes 2

assert(*it == 3);
assert((l == std::list<int>{1, 3, 4}));

l.erase(l.begin(), l.end());
assert(l.empty());
```
