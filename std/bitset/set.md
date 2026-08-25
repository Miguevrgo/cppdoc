---
symbol: std::bitset::set
header: <bitset>
since: C++98
---

Sets bits to `true` or to a given value.

## Usage

```cpp
bitset& set() noexcept; (1)
bitset& set(size_t pos, bool val = true); (2)
```

1. Sets all bits in the bitset to `true`.
2. Sets the bit at position `pos` to `val`.

Returns `*this`.

## Exceptions

1. Throws `std::out_of_range` if `pos >= size()`.

## Examples

```cpp
#include <bitset>
#include <cassert>

std::bitset<4> b{"0000"};

b.set(1);
assert(b == std::bitset<4>{"0010"});

b.set();
assert(b.all());

b.set(0, false);
assert(b == std::bitset<4>{"1110"});
```
