---
symbol: std::gcd
header: <numeric>
since: C++17
---

Computes the greatest common divisor of two integers.

## Usage

```cpp
template<class M, class N>
constexpr std::common_type_t<M, N> gcd(M m, N n);
```

Returns the greatest common divisor of `|m|` and `|n|`. If both `m` and `n` are zero, returns zero.
Both `M` and `N` must be integer types.

## Time complexity

Logarithmic in the magnitude of the smaller argument: O(log(min(|m|, |n|))).

## Examples

```cpp
#include <cassert>
#include <numeric>

assert(std::gcd(12, 18) == 6);
assert(std::gcd(48, 180) == 12);
assert(std::gcd(-12, 18) == 6);
assert(std::gcd(7, 13) == 1);
```
