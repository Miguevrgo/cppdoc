---
symbol: std::list::pop_front
header: <list>
since: C++98
---

Removes the element at the beginning of the list.

## Usage

```cpp
void pop_front();
```

Only iterators and references to the removed element, and `end()`, are invalidated. If it is empty, the behaviour was undefined until C++26, after that if the implementation is hardened a contract violation occurs.

## Time complexity

O(1)

## Examples

```cpp
#include <list>
#include <cassert>

std::list<int> values{1, 2, 3};

values.pop_front();

assert(values.front() == 2);
assert(values.size() == 2);
```
