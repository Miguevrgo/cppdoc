---
symbol: std::string::max_size
header: <string>
since: C++98
---

Returns the maximum number of elements the string is able to hold due to system or library implementation.

## Usage

```cpp
size_type max_size() const;
```

The maximum number of elements is returned as a `size_type`. It is a theoretical limit based on the system or library implementation.

## Examples

```cpp
#include <string>
#include <print>

std::string str;
std::println("{}", str.max_size()); // 9223372036854775806
