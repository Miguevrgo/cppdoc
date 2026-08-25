---
symbol: std::bitset::reset
header: <bitset>
since: C++98
---

Sets bits to `false`.

## Usage

```cpp
bitset& reset() noexcept; (1)
bitset& reset(size_t pos); (2)
```

1. Sets all bits in the bitset to `false` (resets to all zeros).
2. Sets the bit at position `pos` to `false`.

Returns `*this`.

## Exceptions

1. Throws `std::out_of_range` if `pos >= size()`.

## Examples

```cpp
#include <bitset>
#include <cassert>

std::bitset<4> b{"1111"};

b.reset(1);
assert(b == std::bitset<4>{"1101"});

b.reset();
assert(b.none());
```
