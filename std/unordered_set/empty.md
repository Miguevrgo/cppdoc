---
symbol: std::unordered_set::empty
header: <unordered_set>
since: C++11
---

Checks if the unordered_set is empty.

## Usage

```cpp
bool empty() const noexcept;
```

Returns `true` if the unordered_set is empty, `false` otherwise.

## Examples

```cpp
#include <unordered_set>
#include <cassert>

std::unordered_set<int> values;
assert(values.empty());
```

```cpp
#include <unordered_set>
#include <cassert>

std::unordered_set<int> values{1, 2, 3};
assert(!values.empty());
```
