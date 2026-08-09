---
symbol: std::multimap::empty
header: <map>
since: C++98
---

Checks if the multimap is empty.

## Usage

```cpp
bool empty() const;
```

Returns `true` if the multimap is empty, `false` otherwise.

## Examples

```cpp
#include <map>
#include <string>
#include <cassert>

std::multimap<std::string, int> values;
assert(values.empty());
```

```cpp
#include <map>
#include <string>
#include <cassert>

std::multimap<std::string, int> values{{"a", 1}, {"a", 2}, {"b", 3}};
assert(!values.empty());
```
