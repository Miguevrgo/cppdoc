---
symbol: std::bitset::flip
header: <bitset>
since: C++98
---

Toggles the values of bits.

## Usage

```cpp
bitset& flip() noexcept; (1)
bitset& flip(size_t pos); (2)
```

1. Flips all bits (like operator~ but inplace)
2. Flips the bit at position `pos`. Note that `pos` starts from LSB (from the right)

Returns `*this`.

## Exceptions

1. Throws `std::out_of_range` if `pos >= size()`.

## Examples

```cpp
#include <bitset>
#include <cassert>

std::bitset<4> b{"1010"};

b.flip(0);
assert(b == std::bitset<4>{"1011"});

b.flip();
assert(b == std::bitset<4>{"0100"});
```
