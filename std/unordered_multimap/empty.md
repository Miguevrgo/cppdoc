---
symbol: std::unordered_multimap::empty
header: <unordered_map>
since: C++11
---

Checks if the unordered_multimap is empty.

## Usage

```cpp
bool empty() const noexcept;
```

Returns `true` if the unordered_multimap is empty, `false` otherwise.

## Examples

```cpp
#include <unordered_map>
#include <string>
#include <cassert>

std::unordered_multimap<std::string, int> values;
assert(values.empty());
values.emplace("a", 1);
assert(!values.empty());
```
