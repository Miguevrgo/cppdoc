---
symbol: std::unordered_multimap::clear
header: <unordered_map>
since: C++11
---

Erases all elements from the unordered_multimap, with final size 0.

## Usage

```cpp
void clear() noexcept;
```

Invalidates all references, pointers, and iterators referring to contained elements. Every node is destroyed and freed.

## Time complexity

Linear with the size of the unordered_multimap.

## Examples

```cpp
#include <unordered_map>
#include <string>
#include <cassert>

std::unordered_multimap<std::string, int> values{{"a", 1}, {"a", 2}};
assert(values.size() == 2);
values.clear();
assert(values.size() == 0);
```
