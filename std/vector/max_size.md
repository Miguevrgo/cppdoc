---
symbol: std::vector::max_size
header: <vector>
since: C++98
---

Returns the maximum number of elements the vector is able to hold due to system or library implementation. (Do not confuse with capacity)

## Usage

```cpp
size_type max_size() const;
```

The maximum number of elements is returned as a `size_type`.

## Examples

```cpp
#include <vector>
#include <cassert>
#include <print>

std::vector<char> char_vec;
std::vector<int> int_vec;

std::println("{}", char_vec.max_size()); // 9223372036854775807
std::println("{}", int_vec.max_size()); // 2305843009213693951
```
