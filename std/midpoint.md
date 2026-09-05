---
symbol: std::midpoint
header: <numeric>
since: C++20
---

Computes the midpoint of two numbers or pointers without overflowing.

## Usage

```cpp
template<class T>
constexpr T midpoint(T a, T b) noexcept; (1)

template<class T>
constexpr T* midpoint(T* a, T* b); (2)
```

1. Half of the sum of `a` and `b`. For integers the result is rounded towards `a`.
2. Half way between two pointers into the same array.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <limits>
#include <numeric>

assert(std::midpoint(0, 10) == 5);
assert(std::midpoint(1, 4) == 2);
assert(std::midpoint(4, 1) == 3);

constexpr int big = std::numeric_limits<int>::max();
assert(std::midpoint(big, big) == big);
```
