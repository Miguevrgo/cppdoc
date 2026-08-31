---
symbol: std::multimap::rend
header: <map>
since: C++98
---

Returns a reverse iterator to one before the first element of the reversed multimap.

## Usage

```cpp
reverse_iterator rend(); (1)
const_reverse_iterator rend() const; (2)
```

Corresponds to one before the first element of the non-reversed multimap. The returned iterator acts as a placeholder and must not be dereferenced.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <map>

std::multimap<int, int> numbers{{1, 10}, {2, 20}, {2, 21}};

int sum = 0;
for (auto it = numbers.rbegin(); it != numbers.rend(); ++it) sum += it->second;
assert(sum == 51);
```
