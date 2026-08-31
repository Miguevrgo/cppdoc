---
symbol: std::vector::front
header: <vector>
since: C++98
---

Returns a reference to the first element in the vector.

## Usage

```cpp
reference front();
const_reference front() const;
```

Returns a reference to the first element in the vector. Calling `front` on an empty vector was undefined behaviour until C++26, after that if the implementation is hardened a contract violation occurs.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <vector>

std::vector<int> vec{1, 2, 3};

assert(vec.front() == 1);
vec.front() = 9;
assert(vec.front() == 9);
```
