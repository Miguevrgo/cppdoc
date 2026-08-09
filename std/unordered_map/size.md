---
symbol: std::unordered_map::size
header: <unordered_map>
since: C++11
---

Returns the number of elements in the unordered_map.

## Usage

```cpp
size_type size() const;
```

The number of elements in the unordered_map is returned as a `size_type`.

## Examples

```cpp
#include <unordered_map>
#include <string>
#include <cassert>

std::unordered_map<std::string, int> empty;
std::unordered_map<std::string, int> non_empty{{"a", 1}, {"b", 2}, {"b", 3}};
assert(empty.size() == 0);
assert(non_empty.size() == 2);
```
