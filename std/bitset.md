---
symbol: std::bitset
header: <bitset>
since: C++98
---

Fixed-size sequence of `N` bits with bitwise operations and conversions.

## Definition

```cpp
template<size_t N>
class bitset;
```

Represents a fixed-size sequence of bits with space optimization (typically 1 bit per boolean flag although padding may be applied). All member functions are constexpr.

## Examples

```cpp
#include <bitset>
#include <cassert>

std::bitset<8> b{"00101010"};
assert(b.count() == 3);
assert(b.test(1));
assert(b.to_ulong() == 42);
```
