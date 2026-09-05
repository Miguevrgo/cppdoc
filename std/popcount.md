---
symbol: std::popcount
header: <bit>
since: C++20
---

Counts the number of bits set to one in an unsigned integer.

## Usage

```cpp
template<class T>
constexpr int popcount(T x) noexcept;
```

`T` must be an unsigned integer type. Compiles down to a single instruction on hardware that provides one.

## Time complexity

O(1)

## Examples

```cpp
#include <bit>
#include <cassert>
#include <cstdint>

assert(std::popcount(0b0000'0000u) == 0);
assert(std::popcount(0b1010'1010u) == 4);
assert(std::popcount(std::uint8_t{0xff}) == 8);
```
