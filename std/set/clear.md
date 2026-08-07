---
symbol: std::set::clear
header: <set>
since: C++98
---

Erases all elements from the set, with final size 0.

## Usage

```cpp
void clear();
```

Invalidates all references, pointers, and iterators referring to contained elements, the capacity of the set is unchanged and the set is cleaned.

## Time complexity

Linear with the size of the set.

## Examples

```cpp
#include <set>
#include <cassert>

std::set<int> values{1, 2, 3};
assert(values.size() == 3);
values.clear();
assert(values.size() == 0);
```
