---
symbol: std::multiset::end
header: <set>
since: C++98
---

Returns an iterator to one past the last element.

## Usage

```cpp
iterator end(); (1)
const_iterator end() const; (2)
```

The returned iterator acts as a placeholder and must not be dereferenced. It is commonly used together with `begin()` to denote a whole range, or as a "not found" marker returned by `find()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <set>

std::multiset<int> s{1, 1, 2};

assert(s.find(9) == s.end());

int count = 0;
for (auto it = s.begin(); it != s.end(); ++it) count++;
assert(count == 3);
```
