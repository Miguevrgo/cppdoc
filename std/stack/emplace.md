---
symbol: std::stack::emplace
header: <stack>
since: C++11
---

Constructs an element in place at the top of the stack, forwarding `args` to its constructor.

## Usage

```cpp
template<class... Args>
void emplace(Args&&... args); [C++11, until C++17]

template<class... Args>
decltype(auto) emplace(Args&&... args); [C++17]
```

Calls `c.emplace_back(std::forward<Args>(args)...)`. `args` are forwarded to the element's constructor, each keeping its value category. Since C++17 a reference to the new element is returned.

## Time complexity

Depends on the underlying container's `emplace_back`; amortized O(1) for the default `std::deque`.

## Examples

```cpp
#include <cassert>
#include <stack>

struct Point {
    int x, y;
    Point(int a, int b): x(a), y(b) {}
};

std::stack<Point> s;
s.emplace(1, 2); // No temporary Point created

assert(s.top().x == 1 && s.top().y == 2);
```
