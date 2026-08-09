---
symbol: std::multimap::clear
header: <map>
since: C++98
---

Erases all elements from the multimap, with final size 0.

## Usage

```cpp
void clear();
```

Invalidates all references, pointers, and iterators referring to contained elements. Every node is destroyed and freed, unlike `std::vector::clear`, which keeps its buffer.

## Time complexity

Linear with the size of the multimap.

## Examples

```cpp
#include <map>
#include <string>
#include <cassert>

std::multimap<std::string, int> values{{"a", 1}, {"a", 2}, {"b", 3}};
assert(values.size() == 3);
values.clear();
assert(values.size() == 0);
```
