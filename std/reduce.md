---
symbol: std::reduce
header: <numeric>
since: C++17
---

Computes the generalized sum of elements in the range `[first, last)`.

## Usage

```cpp
template<class InputIt>
typename std::iterator_traits<InputIt>::value_type
reduce(InputIt first, InputIt last); (1)

template<class InputIt, class T>
T reduce(InputIt first, InputIt last, T init); (2)

template<class InputIt, class T, class BinaryOp>
T reduce(InputIt first, InputIt last, T init, BinaryOp binary_op); (3)
```

Computes the reduction of `[first, last)` using `binary_op` (or `std::plus{}`).
Unlike `std::accumulate`, the order of application of `binary_op` is non-deterministic, enabling out-of-order execution, vectorization, and parallelism (when passed a `std::execution` policy).

## Time complexity

O(N) applications of `binary_op`, where N is `std::distance(first, last)`.

## Examples

```cpp
#include <cassert>
#include <functional>
#include <numeric>
#include <vector>

std::vector<int> v{1, 2, 3, 4, 5};

int sum = std::reduce(v.begin(), v.end());
assert(sum == 15);

int product = std::reduce(v.begin(), v.end(), 1, std::multiplies<int>());
assert(product == 120);
```
