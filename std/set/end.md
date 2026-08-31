---
symbol: std::set::end
header: <set>
since: C++98
---

Returns an iterator to the element following the last element of the set.

## Usage

```cpp
iterator end(); (1) [C++98, until C++11]
iterator end() noexcept; (1) [C++11]
const_iterator end() const; (2) [C++98, until C++11]
const_iterator end() const noexcept; (2) [C++11]
```

1, 2. This element acts as a placeholder; it does not refer to a real element and must not be dereferenced. It is commonly used together with `begin()` to denote a whole range, or as a "not found" marker returned by `find()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <iterator>
#include <set>

std::set<int> s{1, 2, 3};

assert(s.find(4) == s.end());
assert(*std::prev(s.end()) == 3);
```
