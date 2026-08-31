---
symbol: std::unordered_multimap::size
header: <unordered_map>
since: C++11
---

Returns the number of elements in the unordered_multimap.

## Usage

```cpp
size_type size() const;
```

The number of elements in the unordered_multimap is returned as a `size_type`.

## Examples

```cpp
#include <unordered_map>
#include <string>
#include <cassert>

std::unordered_multimap<std::string, int> empty;
std::unordered_multimap<std::string, int> non_empty{{"a", 1}, {"a", 2}, {"b", 3}};
assert(empty.size() == 0);
assert(non_empty.size() == 3);
```
