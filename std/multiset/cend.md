---
symbol: std::multiset::cend
header: <set>
since: C++11
---

Returns a const iterator to one past the last element.

## Usage

```cpp
const_iterator cend() const;
```

The returned iterator acts as a placeholder and must not be dereferenced. Behaves exactly like `end() const`; it exists so a read-only end iterator can be requested explicitly even on a non-const multiset.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <set>

std::multiset<int> s{1, 1, 2};

int count = 0;
for (auto it = s.cbegin(); it != s.cend(); ++it) count++;
assert(count == 3);
```
