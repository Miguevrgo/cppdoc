---
symbol: std::vector::operator[]
header: <vector>
since: C++98
---

Accesses the element at the specified index without bounds checking.

## Usage

```cpp
reference operator[](size_type pos); (1)
const_reference operator[](size_type pos) const; (2)
```

Returns a reference to the element at position `pos`.
Unlike `at()`, no bounds checking is performed. Accessing an element out of bounds causes undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <vector>

std::vector<int> v{10, 20, 30};
assert(v[0] == 10);
assert(v[2] == 30);

v[1] = 99;
assert(v[1] == 99);
```
