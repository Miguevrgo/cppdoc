---
symbol: std::map::swap
header: <map>
since: C++98
---

Exchanges the contents of the map with those of `other`.

## Usage

```cpp
void swap(map& other);
```

All iterators and references remain valid, but now refer to the same element inside the other map. Only `end()` is invalidated.
No element is moved, copied or swapped, only the internal bookkeeping is exchanged.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <map>
#include <string>

std::map<std::string, int> a{{"a", 1}, {"b", 2}};
std::map<std::string, int> b;

a.swap(b);
assert(a.empty());
assert(b.size() == 2);
```
