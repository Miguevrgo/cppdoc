---
symbol: std::array::max_size
header: <array>
since: C++11
---

Returns the maximum number of elements the array is able to hold.

## Usage

```cpp
constexpr size_type max_size() const noexcept;
```

The maximum number of elements is returned as a `size_type`.

## Complexity

O(1)

## Examples

```cpp
#include <array>
#include <cassert>
#include <print>

std::array<char, 10> char_vec;
std::array<int, 5> int_vec;

assert(char_vec.max_size() == 10);
assert(int_vec.max_size() == 5);
```
