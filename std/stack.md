---
symbol: std::stack
header: <stack>
since: C++98
---

This containers provides the functionality of a stack, i.e, a LIFO data structure.

## Definition

```cpp
template<class T, class Container = std::deque<T>>
class stack;
```

`stack` is an adaptor from the underlying `std::deque`, with some additional functions provided, the stack pushes and pops the elements from the back.

## Complexity

- Push **O(1)**
- Pop **O(1)**
- Top **O(1)**

## Examples

```cpp
#include <cassert>
#include <stack>

std::stack<int> s{1};
s.push(2);
s.push(3);

assert(s.top() == 3);

s.pop();
assert(s.top() == 2);
assert(s.size() == 2);
```
