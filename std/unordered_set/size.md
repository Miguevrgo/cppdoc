---
symbol: std::unordered_set::size
header: <unordered_set>
since: C++11
---

Returns the number of elements in the unordered_set.

## Usage

```cpp
size_type size() const noexcept;
```

The number of elements in the unordered_set is returned as a `size_type`.

## Examples

```cpp
#include <unordered_set>
#include <cassert>

std::unordered_set<int> values{1, 2, 3, 3};
assert(values.size() == 3);
```
