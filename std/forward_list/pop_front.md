---
symbol: std::forward_list::pop_front
header: <forward_list>
since: C++11
---

Removes the element at the beginning of the list.

## Usage

```cpp
void pop_front();
```

Only iterators and references to the removed element are invalidated. If the list is empty, the behaviour was undefined until C++26, after that if the implementation is hardened a contract violation occurs.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{1, 2, 3};

fl.pop_front();

assert(fl.front() == 2);
```
