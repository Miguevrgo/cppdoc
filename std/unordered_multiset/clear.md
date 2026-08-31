---
symbol: std::unordered_multiset::clear
header: <unordered_set>
since: C++11
---

Erases all elements from the unordered_multiset, with final size 0.

## Usage

```cpp
void clear() noexcept;
```

Invalidates all references, pointers, and iterators referring to contained elements. Every node is destroyed and freed.

## Time complexity

Linear with the size of the unordered_multiset.

## Examples

```cpp
#include <unordered_set>
#include <cassert>

std::unordered_multiset<int> values{1, 1, 2};
assert(values.size() == 3);
values.clear();
assert(values.size() == 0);
```
