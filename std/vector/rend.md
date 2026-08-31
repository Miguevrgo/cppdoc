---
symbol: std::vector::rend
header: <vector>
since: C++98
---

Returns a reverse iterator to the element following the last element of the reversed vector.

## Usage

```cpp
reverse_iterator rend() noexcept; (1)
const_reverse_iterator rend() const noexcept; (2)
```

Returns a reverse iterator to the (non-existent) element preceding the first element of the vector, corresponding to the element past the last of the reversed vector. Equivalent to `reverse_iterator(begin())`. Attempting to dereference it results in undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <vector>

std::vector<int> vec{1, 2, 3};

assert(vec.rend() - vec.rbegin() == 3);
assert(*(vec.rend() - 1) == 1);
```
