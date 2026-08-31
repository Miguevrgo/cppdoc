---
symbol: std::vector::crbegin
header: <vector>
since: C++11
---

Returns a const reverse iterator to the first element of the reversed vector.

## Usage

```cpp
const_reverse_iterator crbegin() const noexcept;
```

Returns a const reverse iterator to the last element of the vector, corresponding to the first element of the reversed vector. Equivalent to `const_reverse_iterator(cend())`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <vector>

std::vector<int> vec{1, 2, 3};
auto it = vec.crbegin();

assert(*it == 3);
++it;
assert(*it == 2);
```
