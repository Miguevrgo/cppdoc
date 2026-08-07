---
symbol: std::set::max_size
header: <set>
since: C++98
---

Returns the maximum number of elements the set is able to hold due to system or library implementation.

## Usage

```cpp
size_type max_size() const;
```

The maximum number of elements is returned as a `size_type`.

## Examples

```cpp
#include <set>
#include <cassert>
#include <print>
#include <string>

std::set<char> char_set;
std::set<char> int_set;
std::set<std::string> string_set;

std::println("{}", char_set.max_size());   // 461168601842738790
std::println("{}", int_set.max_size());    // 461168601842738790
std::println("{}", string_set.max_size()); // 288230376151711743
```
