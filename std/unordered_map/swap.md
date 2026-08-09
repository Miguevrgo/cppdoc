---
symbol: std::unordered_map::swap
header: <unordered_map>
since: C++11
---

Exchanges the contents of the unordered_map with those of `other`.

## Usage

```cpp
void swap(unordered_map& other);
```

All iterators and references remain valid, but now refer to the same element inside the other unordered_map. Only `end()` is invalidated.
No element is moved, copied or swapped, only the internal bookkeeping is exchanged.

## Time complexity

O(1)

## Examples

```cpp
#include <unordered_map>
#include <string>
#include <cassert>

std::unordered_map<std::string, int> a{{"a", 1}, {"b", 2}};
std::unordered_map<std::string, int> b;

a.swap(b);
assert(a.empty());
assert(b.size() == 2);
```
