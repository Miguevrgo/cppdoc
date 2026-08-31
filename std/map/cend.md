---
symbol: std::map::cend
header: <map>
since: C++11
---

Returns a const iterator to one past the last element.

## Usage

```cpp
const_iterator cend() const;
```

The returned iterator acts as a placeholder and must not be dereferenced. Always returns a `const_iterator`, even on a non-const map, unlike `end()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <map>

std::map<int, int> numbers{{1, 10}, {2, 20}};

int count = 0;
for (auto it = numbers.cbegin(); it != numbers.cend(); ++it) count++;
assert(count == 2);
```
