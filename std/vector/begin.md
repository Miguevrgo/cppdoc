---
symbol: std::vector::begin
header: <vector>
since: C++98
---

Returns an iterator to the first element of the vector.

## Usage

```cpp
iterator begin() noexcept; (1)
const_iterator begin() const noexcept; (2)
```

1. Returns a mutable iterator to the first element, or `end()` if the vector is empty.
2. Returns a const iterator to the first element, or `end()` if the vector is empty.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <vector>

std::vector<int> vec{1, 2, 3};
auto it = vec.begin();

assert(*it == 1);
*it = 10;
assert(vec[0] == 10);
```
