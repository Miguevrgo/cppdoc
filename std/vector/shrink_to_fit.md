---
symbol: std::vector::shrink_to_fit
header: <vector>
since: C++11
---

Shrinks the capacity of the vector as much as possible, it is a request.

## Usage

```cpp
void shrink_to_fit();
```

Requests the removal of unused capacity.

## Time complexity

Linear with the size of the vector.

## Examples

```cpp
#include <vector>
#include <cassert>
#include <print>

std::vector<int> vec{};
std::println("Vec capacity: {}", vec.capacity()); // 0
vec.resize(100);
std::println("Vec capacity: {}", vec.capacity()); // 100
vec.resize(50);
std::println("Vec capacity: {}", vec.capacity()); // 100
vec.shrink_to_fit();
std::println("Vec capacity: {}", vec.capacity()); // 50
```
