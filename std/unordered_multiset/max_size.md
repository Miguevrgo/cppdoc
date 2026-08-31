---
symbol: std::unordered_multiset::max_size
header: <unordered_set>
since: C++11
---

Returns the maximum number of elements the unordered_multiset is able to hold due to system or library implementation.

## Usage

```cpp
size_type max_size() const noexcept;
```

The maximum number of elements is returned as a `size_type`. Reflects the theoretical limit on the size of the unordered_multiset.

## Examples

```cpp
#include <print>
#include <unordered_set>

std::unordered_multiset<int> int_set;

std::println("{}", int_set.max_size()); // 1152921504606846975
```
