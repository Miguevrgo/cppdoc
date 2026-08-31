---
symbol: std::vector::crend
header: <vector>
since: C++11
---

Returns a const reverse iterator to the element following the last element of the reversed vector.

## Usage

```cpp
const_reverse_iterator crend() const noexcept;
```

Returns a const reverse iterator to the (non-existent) element preceding the first element of the vector, corresponding to the element past the last of the reversed vector. Equivalent to `const_reverse_iterator(cbegin())`. Attempting to dereference it results in undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <vector>

std::vector<int> vec{1, 2, 3};

assert(vec.crend() - vec.crbegin() == 3);
assert(*(vec.crend() - 1) == 1);
```
