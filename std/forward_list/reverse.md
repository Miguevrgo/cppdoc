---
symbol: std::forward_list::reverse
header: <forward_list>
since: C++11
---

Reverses the order of the elements in the list.

## Usage

```cpp
void reverse() noexcept;
```

No references, pointers or iterators to the elements are invalidated, only the order in which they are traversed changes. `before_begin()` still precedes the (new) first element.

## Time complexity

Linear in the number of elements.

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{1, 2, 3};

fl.reverse();

assert((fl == std::forward_list<int>{3, 2, 1}));
```
