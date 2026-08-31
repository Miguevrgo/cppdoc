---
symbol: std::list::insert
header: <list>
since: C++98
---

Inserts elements before the specified position in the list.

## Usage

```cpp
iterator insert(const_iterator pos, const T& value);                  (1)
iterator insert(const_iterator pos, size_type count, const T& value); (3)
```

1. Inserts a copy of `value` before `pos`.
3. Inserts `count` copies of `value` before `pos`. Move, range (4) and initializer-list (5) overloads also exist.

Returns an iterator to the first element inserted, or `pos` if none was. No existing iterators are invalidated.

## Examples

```cpp
#include <cassert>
#include <iterator>
#include <list>

std::list<int> l{1, 5};
l.insert(std::next(l.begin()), 9);       // (1) single 9
l.insert(l.end(), 2, 3);                 // (3) two 3s at the end

assert((l == std::list<int>{1, 9, 5, 3, 3}));
```
