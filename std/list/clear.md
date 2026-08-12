---
symbol: std::list::clear
header: <list>
since: C++98
---

Erases all elements from the list.

## Usage

```cpp
void clear();
```

Erases all elements, invalidates all references, pointers, and iterators referring to contained elements. Every element is destroyed and every block is released. Final size is 0.

## Time complexity

Linear with the size of the list.

## Examples

```cpp
#include <list>
#include <cassert>

std::list<int> values{1, 2, 3};
assert(values.size() == 3);
values.clear();
assert(values.size() == 0);
```
