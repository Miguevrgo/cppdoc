---
symbol: std::vector::cbegin
header: <vector>
since: C++11
---

Returns a const iterator to the first element of the vector.

## Usage

```cpp
const_iterator cbegin() const noexcept;
```

Returns a const iterator to the first element, or `cend()` if the vector is empty. The iterator can be used to read but not modify the elements.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <vector>

std::vector<int> vec{1, 2, 3};
auto it = vec.cbegin();

assert(*it == 1);
```
