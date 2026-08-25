---
symbol: std::bitset::all
header: <bitset>
since: C++11
---

Checks if all bits are set to `true`.

## Usage

```cpp
bool all() const noexcept;
```

Returns `true` if all bits in the bitset are set to `true`, `false` otherwise.

## Examples

```cpp
#include <bitset>
#include <cassert>

std::bitset<4> b1{"1111"};
std::bitset<4> b2{"1101"};

assert(b1.all());
assert(!b2.all());
```
