---
symbol: std::accumulate
header: <numeric>
since: C++98
---

Computes the sum of the given initial value `init` and elements in the range `[first, last)`.

## Usage

```cpp
template<class InputIt, class T>
T accumulate(InputIt first, InputIt last, T init); (1) [constexpr since C++20]

template<class InputIt, class T, class BinaryOp>
T accumulate(InputIt first, InputIt last, T init, BinaryOp op); (2) [constexpr since C++20]
```

1. Computes the sum of `init` and the elements in `[first, last)` using `operator+`.
2. Computes the reduction using the given binary operation `op`.

## Time complexity

Linear with the size of the range

## Examples

```cpp
#include <array>
#include <cassert>
#include <functional>
#include <numeric>

std::array<int, 4> v{1, 2, 3, 4};

int sum = std::accumulate(v.begin(), v.end(), 0);
assert(sum == 10);

int product = std::accumulate(v.begin(), v.end(), 1, std::multiplies<int>());
assert(product == 24);
```
