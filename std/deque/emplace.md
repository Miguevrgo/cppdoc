---
symbol: std::deque::emplace
header: <deque>
since: C++11
---

Constructs an element in place before `pos`, forwarding `args` to its constructor.

## Usage

```cpp
template<class... Args>
iterator emplace(const_iterator pos, Args&&... args);
```

`args` are forwarded to the constructor of the new element, which is built directly before `pos`. Returns an iterator to the new element. If `pos` is `begin()` or `end()`, all iterators to the deque are invalidated, but references and pointers to existing elements remain valid. Otherwise, all iterators, references and pointers are invalidated.

## Exceptions

If an exception is thrown other than by the constructor of `T` this function has no effect.

## Time complexity

Linear in the distance between `pos` and the nearer of `begin()` or `end()`.

## Examples

```cpp
#include <cassert>
#include <deque>

struct Point {
    int x, y;
    Point(int a, int b): x(a), y(b) {}
};

std::deque<Point> pts{{1, 1}, {3, 3}};
auto it = pts.emplace(pts.begin() + 1, 2, 2); // No temporary Point created

assert(it->x == 2 && it->y == 2);
assert(pts.size() == 3);
```
