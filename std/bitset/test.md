---
symbol: std::bitset::test
header: <bitset>
since: C++98
---

Returns the value of the bit at the specified position with bounds checking.

## Usage

```cpp
bool test(size_t pos) const; (1)
```

Returns the value of the bit at position `pos` (0-indexed from least significant bit).

## Exceptions

`std::out_of_range` if `pos >= size()`.

## Time complexity

O(1)

## Examples

```cpp
#include <bitset>
#include <cassert>

std::bitset<8> b{"00000100"};

assert(b.test(2));
assert(!b.test(0));

try {
    auto _ = b.test(10);
    assert(false);
} catch (const std::out_of_range&) {
    assert(true);
}
```
