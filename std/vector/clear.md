---
symbol: std::vector::clear
header: <vector>
since: C++98
---

Erases all elements from the vector, with final size 0.

## Usage

```cpp
void clear();
```

Invalidates all references, pointers, and iterators referring to contained elements, the capacity of the vector is unchanged and the vector is cleaned.

## Time complexity

Linear with the size of the vector.

## Examples

```cpp
#include <vector>
#include <cassert>

std::vector<int> vec{3, 4, 5, 6};
assert(vec.size() == 4);
vec.clear();
assert(vec.size() == 0);
```
