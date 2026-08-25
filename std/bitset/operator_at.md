---
symbol: std::bitset::operator[]
header: <bitset>
since: C++98
---

Accesses the bit at the specified position without bounds checking.

## Usage

```cpp
constexpr bool operator[](size_t pos) const; (1)
reference operator[](size_t pos); (2)
```

1. Returns the value of the bit at position `pos`.
2. Returns a `std::bitset::reference` proxy object that allows writing to the bit at position `pos`.

Accessing an out-of-bounds position was undefined behaviour until C++26 where a contract violation occurs if the implementation is hardened.

## Time complexity

O(1)

## Examples

```cpp
#include <bitset>
#include <cassert>

std::bitset<4> b{"0000"};

b[1] = true;
assert(b == std::bitset<4>{"0010"});
assert(b[1] == true);
assert(b[0] == false);
```
