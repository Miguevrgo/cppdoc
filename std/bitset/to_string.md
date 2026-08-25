---
symbol: std::bitset::to_string
header: <bitset>
since: C++98
---

Converts the bitset to a `std::string` representation.

## Usage

```cpp
template<class CharT = char, class Traits = std::char_traits<CharT>, class Alloc = std::allocator<CharT>>
std::basic_string<CharT, Traits, Alloc> to_string(CharT zero = CharT('0'), CharT one = CharT('1')) const;
```

Constructs a string representing the binary value of the bitset, where bit `N - 1` corresponds to the first character and bit `0` to the last.

## Time complexity

Linear in `size()`.

## Examples

```cpp
#include <bitset>
#include <cassert>
#include <string>

std::bitset<8> b{42};
assert(b.to_string() == "00101010");
assert(b.to_string('#') == "##1#1#1#");
assert(b.to_string('o', 'x') == "ooxoxoxo");
```
