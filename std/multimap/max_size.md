---
symbol: std::multimap::max_size
header: <map>
since: C++98
---

Returns the maximum number of elements the multimap is able to hold due to system or library implementation.

## Usage

```cpp
size_type max_size() const;
```

The maximum number of elements is returned as a `size_type`. It depends on the size of the internal node type, so it changes with the element type and it is not a number to rely on.

## Examples

```cpp
#include <map>
#include <print>
#include <string>

std::multimap<int, int> int_map;
std::multimap<std::string, int> string_map;

std::println("{}", int_map.max_size());    // 461168601842738790
std::println("{}", string_map.max_size()); // 256204778801521550
```
