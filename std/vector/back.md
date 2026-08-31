---
symbol: std::vector::back
header: <vector>
since: C++98
---

Returns a reference to the last element in the vector.

## Usage

```cpp
reference back();
const_reference back() const;
```

Returns a reference to the last element in the vector. Calling `back` on an empty vector was undefined behaviour until C++26, after that if the implementation is hardened a contract violation occurs.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <vector>

std::vector<int> vec{1, 2, 3};

assert(vec.back() == 3);
vec.back() = 9;
assert(vec.back() == 9);
```
