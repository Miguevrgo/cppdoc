---
symbol: std::map::size
header: <map>
since: C++98
---

Returns the number of elements in the map.

## Usage

```cpp
size_type size() const;
```

The number of elements in the map is returned as a `size_type`.

## Examples

```cpp
#include <map>
#include <cassert>

std::map<int, int> map;
assert(map.size() == 0);
```

```cpp
#include <map>
#include <cassert>

std::map<int, char> map{};
map.emplace(1, 'a');
assert(map.size() == 1);
```
