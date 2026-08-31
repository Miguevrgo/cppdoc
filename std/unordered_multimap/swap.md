---
symbol: std::unordered_multimap::swap
header: <unordered_map>
since: C++11
---

Exchanges the contents of the unordered_multimap with those of `other`.

## Usage

```cpp
void swap(unordered_multimap& other);
```

All iterators and references remain valid, but now refer to the same element inside the other unordered_multimap. Only `end()` is invalidated.
No element is moved, copied or swapped, only the internal bookkeeping is exchanged.

## Time complexity

O(1)

## Examples

```cpp
#include <unordered_map>
#include <string>
#include <cassert>

std::unordered_multimap<std::string, int> a{{"a", 1}, {"a", 2}};
std::unordered_multimap<std::string, int> b;

a.swap(b);
assert(a.empty());
assert(b.size() == 2);
```
