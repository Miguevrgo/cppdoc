---
symbol: std::map::empty
header: <map>
since: C++98
---

Checks if the map is empty.

## Usage

```cpp
bool empty() const;
```

Returns `true` if the map is empty, `false` otherwise.

## Examples

```cpp
#include <map>
#include <cassert>

std::map<int, int> num;
assert(num.empty());
```

```cpp
#include <map>
#include <cassert>

std::map<int, char> chars;
chars.emplace(1, 'a');
assert(!chars.empty());
```
