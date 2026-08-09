---
symbol: std::multimap::size
header: <map>
since: C++98
---

Returns the number of elements in the multimap.

## Usage

```cpp
size_type size() const;
```

The number of elements in the multimap is returned as a `size_type`.

## Examples

```cpp
#include <map>
#include <string>
#include <cassert>

std::multimap<std::string, int> values;
assert(values.size() == 0);
```

```cpp
#include <map>
#include <string>
#include <cassert>

std::multimap<std::string, int> values{{"a", 1}, {"a", 2}, {"b", 3}};
assert(values.size() == 3);
```
