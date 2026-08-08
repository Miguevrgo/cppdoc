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

std::multiset<int> set;
assert(set.size() == 0);
```

```cpp
#include <set>
#include <cassert>

std::multiset<char> set{};
set.emplace('a');
assert(set.size() == 1);
```
