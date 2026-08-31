---
symbol: std::forward_list::max_size
header: <forward_list>
since: C++11
---

Returns the maximum number of elements the list is able to hold due to system or library implementation.

## Usage

```cpp
size_type max_size() const;
```

The maximum number of elements is returned as a `size_type`. It is a theoretical limit based on the system or library implementation, rarely reachable in practice.

## Examples

```cpp
#include <forward_list>
#include <print>
#include <string>

std::forward_list<int> int_list;
std::forward_list<std::string> string_list;

std::println("{}", int_list.max_size());
std::println("{}", string_list.max_size());
```
