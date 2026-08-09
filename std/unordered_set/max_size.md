---
symbol: std::unordered_set::max_size
header: <unordered_set>
since: C++11
---

Returns the maximum number of elements the unordered_set is able to hold due to system or library implementation.

## Usage

```cpp
size_type max_size() const noexcept;
```

The maximum number of elements is returned as a `size_type`. The value tipically reflects
the theoretical limit on the size.

## Examples

```cpp
#include <print>
#include <string>
#include <unordered_set>

std::unordered_set<int> int_set;
std::unordered_set<std::string> string_set;

std::println("{}", int_set.max_size());    // 1152921504606846975
std::println("{}", string_set.max_size()); // 384307168202282325
```
