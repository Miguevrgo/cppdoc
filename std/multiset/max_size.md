---
symbol: std::multiset::max_size
header: <set>
since: C++98
---

Returns the maximum number of elements the multiset is able to hold due to system or library implementation.

## Usage

```cpp
size_type max_size() const;
```

The maximum number of elements is returned as a `size_type`.

## Examples

```cpp
#include <set>
#include <print>
#include <string>

std::multiset<char> char_multiset;
std::multiset<int> int_multiset;
std::multiset<std::string> string_multiset;

std::println("{}", char_multiset.max_size());   // 461168601842738790
std::println("{}", int_multiset.max_size());    // 461168601842738790
std::println("{}", string_multiset.max_size()); // 288230376151711743
```
