---
symbol: std::vector::end
header: <vector>
since: C++98
---

Returns an iterator to the element following the last element of the vector.

## Usage

```cpp
iterator end() noexcept; (1)
const_iterator end() const noexcept; (2)
```

Returns an iterator to the (non-existent) element past the last one. This iterator acts as a placeholder; attempting to dereference it results in undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <vector>

std::vector<int> vec{1, 2, 3};

assert(vec.end() - vec.begin() == 3);
assert(*(vec.end() - 1) == 3);
```
