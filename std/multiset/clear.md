---
symbol: std::multiset::clear
header: <set>
since: C++98
---

Erases all elements from the multiset, with final size 0.

## Usage

```cpp
void clear();
```

Invalidates all references, pointers, and iterators referring to contained elements. Every node is destroyed and freed.

## Time complexity

Linear with the size of the multiset.

## Examples

```cpp
#include <set>
#include <cassert>

std::multiset<int> values{1, 1, 2};
assert(values.size() == 3);
values.clear();
assert(values.size() == 0);
```
