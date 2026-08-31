---
symbol: std::forward_list::empty
header: <forward_list>
since: C++11
---

Checks if the list is empty.

## Usage

```cpp
bool empty() const;
```

Returns `true` if the list has no elements, `false` otherwise. Since `forward_list` has no `size()`, this is the cheap way to check for emptiness.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl;
assert(fl.empty());

fl.push_front(1);
assert(!fl.empty());
```
