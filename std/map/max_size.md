---
symbol: std::map::max_size
header: <map>
since: C++98
---

Returns the maximum number of elements the map is able to hold due to system or library implementation.

## Usage

```cpp
size_type max_size() const;
```

The maximum number of elements is returned as a `size_type`.

## Examples

```cpp
#include <map>
#include <cassert>
#include <print>

std::map<char, char> char_map;
std::map<long, char> long_map;

std::println("{}", char_map.max_size()); // 461168601842738790
std::println("{}", long_map.max_size());  // 384307168202282325
```
