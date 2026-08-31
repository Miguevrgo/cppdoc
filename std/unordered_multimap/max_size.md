---
symbol: std::unordered_multimap::max_size
header: <unordered_map>
since: C++11
---

Returns the maximum number of elements the unordered_multimap is able to hold due to system or library implementation.

## Usage

```cpp
size_type max_size() const noexcept;
```

The maximum number of elements is returned as a `size_type`. Reflects the theoretical limit on the size of the unordered_multimap.

## Examples

```cpp
#include <print>
#include <string>
#include <unordered_map>

std::unordered_multimap<int, int> int_map;
std::unordered_multimap<std::string, int> string_map;

std::println("{}", int_map.max_size());    // 1152921504606846975
std::println("{}", string_map.max_size()); // 329406144173384850
```
