---
symbol: std::deque::emplace_back
header: <deque>
since: C++11
---

Constructs an element in place at the end of the deque, forwarding `args` to its constructor.

## Usage

```cpp
template<class... Args>
void emplace_back(Args&&... args); [C++11, until C++17]

template<class... Args>
reference emplace_back(Args&&... args); [C++17]
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

std::deque<Point> pts{};
pts.emplace_back(1, 2); // No temporary Point created
assert(pts[0].x == 1 && pts[0].y == 2);
```

```cpp
#include <cassert>
#include <deque>
#include <string>

std::deque<std::string> values;
values.push_back(std::string(3, 'a'));           // builds a string, then moves it in
std::string& last = values.emplace_back(3, 'b'); // builds in place, returns it (C++17)
assert(last == "bbb");
assert(&last == &values.back());
assert((values == std::deque<std::string>{"aaa", "bbb"}));
```
