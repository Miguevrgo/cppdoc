---
symbol: std::map::crend
header: <map>
since: C++11
---

Returns a const reverse iterator to one before the first element of the reversed map.

## Usage

```cpp
const_reverse_iterator crend() const;
```

Corresponds to one before the first element of the non-reversed map. Always returns a `const_reverse_iterator`, even on a non-const map, unlike `rend()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <map>

std::map<int, int> numbers{{1, 10}, {2, 20}, {3, 30}};

int sum = 0;
for (auto it = numbers.crbegin(); it != numbers.crend(); ++it) sum += it->first;
assert(sum == 6);
```
