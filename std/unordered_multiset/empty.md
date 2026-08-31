---
symbol: std::unordered_multiset::empty
header: <unordered_set>
since: C++11
---

Checks if the unordered_multiset is empty.

## Usage

```cpp
bool empty() const noexcept;
```

Returns `true` if the unordered_multiset is empty, `false` otherwise.

## Examples

```cpp
#include <unordered_set>
#include <cassert>

std::unordered_multiset<int> values;
assert(values.empty());
values.emplace(1);
assert(!values.empty());
```
