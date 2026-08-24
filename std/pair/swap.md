---
symbol: std::pair::swap
header: <utility>
since: C++11
---

Swaps the contents of two pairs.

## Usage

```cpp
constexpr void swap(pair& other) noexcept;
```

Swaps `first` with `other.first` and `second` with `other.second`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <utility>

std::pair<int, int> p1{1, 2};
std::pair<int, int> p2{3, 4};

p1.swap(p2);

assert(p1.first == 3 && p1.second == 4);
assert(p2.first == 1 && p2.second == 2);
```
