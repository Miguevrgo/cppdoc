---
symbol: std::list::empty
header: <list>
since: C++98
---

Checks if the list is empty.

## Usage

```cpp
bool empty() const;
```

Returns `true` if the list is empty, `false` otherwise.

## Examples

```cpp
#include <list>
#include <cassert>

std::list<int> values;
assert(values.empty());
```

```cpp
#include <list>
#include <cassert>

std::list<int> values{1, 2, 3};
assert(!values.empty());
```
