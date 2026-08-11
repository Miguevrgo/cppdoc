---
symbol: std::deque::front
header: <deque>
since: C++98
---

Returns a reference to the first element in the deque.

## Usage

```cpp
reference front();
const_reference front() const;
```

Returns a reference to the first element in the deque. If it is empty, the behaviour was undefined until C++26, after that if the implementation is hardened a constract violation occurs.

## Time complexity

O(1)

## Examples

```cpp
#include <deque>
#include <cassert>

std::deque<int> values{1, 2, 3};

assert(values.front() == 1);
values.front() = 9;
assert(values.front() == 9);
```
