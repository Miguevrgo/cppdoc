---
symbol: std::list::size
header: <list>
since: C++98
---

Returns the number of elements in the list.

## Usage

```cpp
size_type size() const;
```

The number of elements in the list is returned as a `size_type`.

## Examples

```cpp
#include <list>
#include <cassert>

std::list<int> values;
assert(values.size() == 0);
```

```cpp
#include <list>
#include <cassert>

std::list<int> values{1, 2, 3};
assert(values.size() == 3);
```
