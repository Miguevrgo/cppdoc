---
symbol: std::vector::cend
header: <vector>
since: C++11
---

Returns a const iterator to the element following the last element of the vector.

## Usage

```cpp
const_iterator cend() const noexcept;
```

Returns a const iterator to the (non-existent) element past the last one. This iterator acts as a placeholder; attempting to dereference it results in undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <vector>

std::vector<int> vec{1, 2, 3};

assert(vec.cend() - vec.cbegin() == 3);
assert(*(vec.cend() - 1) == 3);
```
