---
symbol: std::set::size
header: <set>
since: C++98
---

Returns the number of elements in the set.

## Usage

```cpp
size_type size() const;
```

The number of elements in the set is returned as a `size_type`.

## Examples

```cpp
#include <set>
#include <cassert>

std::set<int> set;
assert(set.size() == 0);
```

```cpp
#include <set>
#include <cassert>

std::set<char> set{};
set.emplace('a');
assert(set.size() == 1);
```
