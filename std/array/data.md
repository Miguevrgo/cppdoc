---
symbol: std::array::data
header: <array>
since: C++11
---

Returns a pointer to the first element in the underlying array.

## Usage

```cpp
T* data() noexcept;
const T* data() const noexcept;
```

Returns a pointer to the first element of the underlying array, the pointer is such that range
`[data(), data() + size())` is always a valid range.

## Time complexity

O(1)

## Examples

```cpp
#include <array>
#include <cassert>
#include <cstddef>
#include <print>

auto func = [&](const char *p, std::size_t size) -> void { 
    for (std::size_t i = 0; i < size; ++i) {
        std::print("{} ", p[i]);
    }
};

std::array<char, 3> char_vec{'a', 'b', 'c'};
func(char_vec.data(), char_vec.size());
```
