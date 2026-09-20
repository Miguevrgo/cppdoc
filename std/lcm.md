---
symbol: std::lcm
header: <numeric>
since: C++17
---

Computes the least common multiple of two integers.

## Usage

```cpp
template<class M, class N>
constexpr std::common_type_t<M, N> lcm(M m, N n);
```

Returns the least common multiple of `|m|` and `|n|`. Both `M` and `N` must be integer types.

## Time complexity

Logarithmic in the magnitude of the smaller argument.

## Examples

```cpp
#include <cassert>
#include <numeric>

assert(std::lcm(4, 6) == 12);
assert(std::lcm(21, 6) == 42);
assert(std::lcm(0, 10) == 0);
```
