---
symbol: std::stack::top
header: <stack>
since: C++98
---

Returns a reference to the top element of the stack.

## Usage

```cpp
reference top();
const_reference top() const;
```

Returns `c.back()`, the most recently pushed element. Calling `top` on an empty stack is undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <stack>

std::stack<int> s;
s.push(1);
s.push(2);

assert(s.top() == 2);
s.top() = 9;
assert(s.top() == 9);
```
