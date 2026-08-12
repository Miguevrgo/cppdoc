---
symbol: std::list::front
header: <list>
since: C++98
---

Returns a reference to the first element in the list.

## Usage

```cpp
reference front();
const_reference front() const;
```

Returns a reference to the first element in the list. If it is empty, the behaviour was undefined until C++26, after that if the implementation is hardened a contract violation occurs.

## Time complexity

O(1)

## Examples

```cpp
#include <list>
#include <cassert>

std::list<int> values{1, 2, 3};

assert(values.front() == 1);
values.front() = 9;
assert(values.front() == 9);
```
