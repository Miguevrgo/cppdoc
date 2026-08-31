---
symbol: std::stack::size
header: <stack>
since: C++98
---

Returns the number of elements in the stack.

## Usage

```cpp
size_type size() const;
```

Returns `c.size()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <stack>

std::stack<int> s;
assert(s.size() == 0);

s.push(1);
s.push(2);
assert(s.size() == 2);
```
