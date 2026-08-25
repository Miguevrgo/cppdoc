---
symbol: std::bitset::count
header: <bitset>
since: C++98
---

Returns the number of bits set to `true`.

## Usage

```cpp
size_t count() const noexcept;
```

Returns the number of bits in the bitset that are set to `true` (popcount).

## Examples

```cpp
#include <bitset>
#include <cassert>

std::bitset<8> b{"00110101"};
assert(b.count() == 4);
```
