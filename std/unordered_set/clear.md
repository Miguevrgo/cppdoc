---
symbol: std::unordered_set::clear
header: <unordered_set>
since: C++11
---

Erases all elements from the unordered_set, with final size 0.

## Usage

```cpp
void clear() noexcept;
```

Invalidates all references, pointers, and iterators referring to contained elements. Every node is destroyed and freed.

## Time complexity

Linear with the size of the unordered_set.

## Examples

```cpp
#include <unordered_set>
#include <cassert>

std::unordered_set<int> values{1, 2, 3};
assert(values.size() == 3);
values.clear();
assert(values.size() == 0);
```
