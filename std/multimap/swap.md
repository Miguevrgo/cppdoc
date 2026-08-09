---
symbol: std::multimap::swap
header: <map>
since: C++98
---

Exchanges the contents of the multimap with those of `other`.

## Usage

```cpp
void swap(multimap& other);
```

All iterators and references remain valid, but now refer to the same element inside the other multimap. Only `end()` is invalidated.

No element is moved, copied or swapped, only the internal bookkeeping is exchanged, which is why this is constant time while `std::array::swap` is linear.

## Time complexity

O(1)

## Examples

```cpp
#include <map>
#include <string>
#include <cassert>

std::multimap<std::string, int> a{{"a", 1}, {"a", 2}, {"b", 3}};
std::multimap<std::string, int> b;

a.swap(b);

assert(a.empty());
assert(b.size() == 3);
```
