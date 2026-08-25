---
symbol: std::bitset::size
header: <bitset>
since: C++98
---

Returns the number of bits that the bitset holds.

## Usage

```cpp
constexpr size_t size() const noexcept;
```

Returns the template parameter `N`, which is the total capacity / number of bits.

## Time complexity

O(1)

## Examples

```cpp
#include <bitset>
#include <cassert>

std::bitset<16> b;
assert(b.size() == 16);
```
