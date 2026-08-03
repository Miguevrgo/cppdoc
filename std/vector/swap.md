---
symbol: std::vector::swap
header: <vector>
since: C++98
---

Exchanges the contents and capacity of the vector with those of `other`.
No move, copy, or swap is invoked on individual elements.

## Usage

```cpp
void swap(vector& other);
```

All iterators and references remain valid, but now refer to the same element
inside the other vector. Only `end()` is invalidated.

`std::swap(v1, v2)` calls this member overload rather than swapping elements
one by one.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <vector>

std::vector<int> a{1, 2, 3};
std::vector<int> b{4, 5};

auto it = a.begin() + 1;
int& ref = *a.begin();

a.swap(b);

assert(*it == 2);
assert(&ref == &b[0]);
assert((a == std::vector<int>{4, 5}));
assert((b == std::vector<int>{1, 2, 3}));
```
