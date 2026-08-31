---
symbol: std::vector::operator[]
header: <vector>
since: C++98
---

Accesses the element at specified index without bounds checking.

## Usage

```cpp
reference operator[](size_type pos); (1)
const_reference operator[](size_type pos) const; (2)
```

Returns a reference to the element at `pos`. If `pos >= size()` behaviour was undefined until C++26, after that if the implementation is hardened a contract violation occurs.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <vector>

std::vector<int> vec{1, 2, 3};

assert(vec[0] == 1);
vec[1] = 20;
assert(vec[1] == 20);

const std::vector<int> cvec{4, 5, 6};
assert(cvec[2] == 6);
```
