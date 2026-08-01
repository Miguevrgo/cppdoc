---
symbol: std::vector::emplace_back
header: <vector>
since: C++11
---

Constructs an element in place at the end of the vector, forwarding `args` to its constructor.

## Usage

```cpp
template<class... Args>
void emplace_back(Args&&... args); [C++11, until C++17]

template<class... Args>
reference emplace_back(T&& value); [C++17]
```

Args are forwarded to the element's constructor, each keeping its value category. Since C++17 a reference to the new element is returned.

## Exceptions

If there is an error in the allocation or in the element's constructor this function has no effect.

## Time complexity

Takes amortized O(1) time. If the vector's length would exceed its capacity, then O(capacity) time is taken to reallocate and move the elements into the new allocation.

## Examples

```cpp
#include <vector>
#include <cassert>

struct Point {
    int x, y;
    Point(int a, int b): x(a), y(b) {}
};

std::vector<Point> pts{};
pts.emplace_back(1, 2); // No temporary Point created
assert(pts[0].x == 1 && pts[0].y == 2);
```

```cpp
#include <cassert>
#include <string>
#include <vector>

std::vector<std::string> vec;
vec.push_back(std::string(3, 'a'));           // builds a string, then moves it in
std::string& last = vec.emplace_back(3, 'b'); // builds in place, returns it (C++17)
assert(last == "bbb");
assert(&last == &vec.back());
assert((vec == std::vector<std::string>{"aaa", "bbb"}));
```
