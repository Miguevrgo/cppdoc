---
symbol: std::map::crbegin
header: <map>
since: C++11
---

Returns a const reverse iterator to the first element of the reversed map.

## Usage

```cpp
const_reverse_iterator crbegin() const;
```

Corresponds to the last element of the non-reversed map, i.e. the one with the greatest key. Always returns a `const_reverse_iterator`, even on a non-const map, unlike `rbegin()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <map>

std::map<int, int> numbers{{1, 10}, {2, 20}, {3, 30}};

auto it = numbers.crbegin();
assert(it->first == 3);
```
