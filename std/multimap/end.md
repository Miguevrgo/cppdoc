---
symbol: std::multimap::end
header: <map>
since: C++98
---

Returns an iterator to one past the last element.

## Usage

```cpp
iterator end(); (1)
const_iterator end() const; (2)
```

The returned iterator acts as a placeholder and must not be dereferenced. It only ever compares equal to another end iterator or, if elements were subsequently erased, to iterators that now refer past the last element.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <map>

std::multimap<int, int> numbers{{1, 10}, {1, 20}};

assert(numbers.find(3) == numbers.end());

int count = 0;
for (auto it = numbers.begin(); it != numbers.end(); ++it) count++;
assert(count == 2);
```
