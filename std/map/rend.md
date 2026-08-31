---
symbol: std::map::rend
header: <map>
since: C++98
---

Returns a reverse iterator to one before the first element of the reversed map.

## Usage

```cpp
reverse_iterator rend(); (1)
const_reverse_iterator rend() const; (2)
```

Corresponds to one before the first element of the non-reversed map. The returned iterator acts as a placeholder and must not be dereferenced.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <map>

std::map<int, int> numbers{{1, 10}, {2, 20}, {3, 30}};

int sum = 0;
for (auto it = numbers.rbegin(); it != numbers.rend(); ++it) sum += it->first;
assert(sum == 6);
```
