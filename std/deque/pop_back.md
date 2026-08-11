---
symbol: std::deque::pop_back
header: <deque>
since: C++98
---

Removes the element at the end of the deque.

## Usage

```cpp
void pop_back();
```

Only iterators and references to the removed element, and `end()`, are invalidated. If it is empty, the behaviour was undefined until C++26, after that if the implementation is hardened a constract violation occurs.

## Time complexity

O(1)

## Examples

```cpp
#include <deque>
#include <cassert>

std::deque<int> values{1, 2, 3};

values.pop_back();

assert(values.back() == 2);
assert(values.size() == 2);
```
