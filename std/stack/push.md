---
symbol: std::stack::push
header: <stack>
since: C++98
---

Adds an element to the top of the stack.

## Usage

```cpp
void push(const T& value); (1)
void push(T&& value); (2) [C++11]
```

Pushes `value` onto the top of the underlying container by calling `c.push_back(value)`.

1. The new element is initialized as a copy of `value`.
2. The new element is moved.

## Time complexity

Depends on the underlying container's `push_back`; amortized O(1) for the default `std::deque`.

## Examples

```cpp
#include <cassert>
#include <stack>
#include <utility>

std::stack<int> s;
s.push(1); // (1) value is copied

int x = 2;
s.push(std::move(x)); // (2) value is moved

assert(s.top() == 2);
assert(s.size() == 2);
```
