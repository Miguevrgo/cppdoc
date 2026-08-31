---
symbol: std::unordered_multiset::size
header: <unordered_set>
since: C++11
---

Returns the number of elements in the unordered_multiset.

## Usage

```cpp
size_type size() const;
```

The number of elements in the unordered_multiset is returned as a `size_type`.

## Examples

```cpp
#include <unordered_set>
#include <cassert>

std::unordered_multiset<int> empty;
std::unordered_multiset<int> non_empty{1, 1, 2};
assert(empty.size() == 0);
assert(non_empty.size() == 3);
```
