---
symbol: std::stack::pop
header: <stack>
since: C++98
---

Removes the element at the top of the stack.

## Usage

```cpp
void pop();
```

Calls `c.pop_back()` on the underlying container, removing the most-recently-pushed element. Calling `pop` on an empty stack is undefined behavior.

## Time complexity

Depends on the underlying container's `pop_back`; O(1) for the default `std::deque`.

## Examples

```cpp
#include <cassert>
#include <stack>

std::stack<int> s;
s.push(1);
s.push(2);

s.pop();

assert(s.top() == 1);
assert(s.size() == 1);
```
