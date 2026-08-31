---
symbol: std::deque::emplace_front
header: <deque>
since: C++11
---

Constructs an element in place at the beginning of the deque, forwarding `args` to its constructor.

## Usage

```cpp
template<class... Args>
void emplace_front(Args&&... args); [C++11, until C++17]

template<class... Args>
reference emplace_front(Args&&... args); [C++17]
```

`args` are forwarded to the element's constructor, each keeping its value category. Since C++17 a reference to the new element is returned.

## Exceptions

If an exception is thrown other than by the constructor of `T` this function has no effect.

## Time complexity

Amortized O(1).

## Examples

```cpp
#include <cassert>
#include <deque>

struct Point {
    int x, y;
    Point(int a, int b): x(a), y(b) {}
};

std::deque<Point> pts{{2, 2}};
pts.emplace_front(1, 1); // No temporary Point created
assert(pts.front().x == 1 && pts.front().y == 1);
assert(pts.size() == 2);
```
