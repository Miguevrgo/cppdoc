---
symbol: std::list::max_size
header: <list>
since: C++98
---

Returns the maximum number of elements the list is able to hold due to system or library implementation.

## Usage

```cpp
size_type max_size() const;
```

The maximum number of elements is returned as a `size_type`. It is a theoretical limit based on the system or library implementation.

## Examples

```cpp
#include <list>
#include <print>
#include <string>

std::list<int> int_list;
std::list<std::string> string_list;

std::println("{}", int_list.max_size());    // 768614336404564650
std::println("{}", string_list.max_size()); // 384307168202282325
```
