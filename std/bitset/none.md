---
symbol: std::bitset::none
header: <bitset>
since: C++98
---

Checks if none of the bits are set to `true`.

## Usage

```cpp
bool none() const noexcept;
```

Returns `true` if no bits in the bitset are set to `true`, `false` otherwise.

## Time complexity

O(N/w) where N is the number of bits and w is the word size.

## Examples

```cpp
#include <bitset>
#include <cassert>

std::bitset<4> b1{"0000"};
std::bitset<4> b2{"0100"};

assert(b1.none());
assert(!b2.none());
```
