---
symbol: std::bitset::any
header: <bitset>
since: C++98
---

Checks if at least one bit is set to `true`.

## Usage

```cpp
bool any() const noexcept;
```

Returns `true` if at least one bit in the bitset is set to `true`, `false` otherwise.

## Examples

```cpp
#include <bitset>
#include <cassert>

std::bitset<4> b1{"0000"};
std::bitset<4> b2{"0010"};

assert(!b1.any());
assert(b2.any());
```
