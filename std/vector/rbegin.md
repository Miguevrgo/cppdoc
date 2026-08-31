---
symbol: std::vector::rbegin
header: <vector>
since: C++98
---

Returns a reverse iterator to the first element of the reversed vector.

## Usage

```cpp
reverse_iterator rbegin() noexcept; (1)
const_reverse_iterator rbegin() const noexcept; (2)
```

Returns a reverse iterator to the last element of the vector, corresponding to the first element of the reversed vector. Equivalent to `reverse_iterator(end())`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <vector>

std::vector<int> vec{1, 2, 3};
auto it = vec.rbegin();

assert(*it == 3);
++it;
assert(*it == 2);
```
