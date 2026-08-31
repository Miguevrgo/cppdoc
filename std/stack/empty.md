---
symbol: std::stack::empty
header: <stack>
since: C++98
---

Checks if the stack is empty.

## Usage

```cpp
bool empty() const;
```

Returns `c.empty()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <stack>

std::stack<int> s;
assert(s.empty());

s.push(1);
assert(!s.empty());
```
