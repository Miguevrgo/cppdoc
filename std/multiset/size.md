---
symbol: std::multiset::size
header: <set>
since: C++98
---

Returns the number of elements in the multiset.

## Usage

```cpp
size_type size() const;
```

The number of elements in the multiset is returned as a `size_type`.

## Examples

```cpp
#include <set>
#include <cassert>

std::multiset<int> values;
assert(values.size() == 0);
```

```cpp
#include <set>
#include <cassert>

std::multiset<char> values{};
values.emplace('a');
assert(values.size() == 1);
```
