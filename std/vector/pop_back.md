---
symbol: std::vector::pop_back
header: <vector>
since: C++98
---

Removes the last element of the vector.

## Usage

```cpp
void pop_back();
```

Removes the last element of the container. Calling `pop_back` on an empty vector is undefined behavior [C++98, until C++26].

## Time complexity

O(1)

## Examples

```cpp
#include <vector>
#include <cassert>

std::vector<int> vec{2, 3, 4};
vec.pop_back();
assert((vec == std::vector<int>{2, 3}));
```
