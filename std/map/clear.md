---
symbol: std::map::clear
header: <map>
since: C++98
---

Erases all elements from the map, with final size 0.

## Usage

```cpp
void clear();
```

Invalidates all references, pointers, and iterators referring to contained elements, the capacity of the map is unchanged and the map is cleaned.

## Time complexity

Linear with the size of the map.

## Examples

```cpp
#include <map>
#include <cassert>

std::map<int, int> keys{{1, 4}, {2, 6}};
assert(keys.size() == 2);
keys.clear();
assert(keys.size() == 0);
```
