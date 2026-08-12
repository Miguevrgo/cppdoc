---
symbol: std::deque::back
header: <deque>
since: C++98
---

Returns a reference to the last element in the deque.

## Usage

```cpp
reference back();
const_reference back() const;
```

Returns a reference to the last element in the deque. If it is empty, the behaviour was undefined until C++26, after that if the implementation is hardened a contract violation occurs.

## Time complexity

O(1)

## Examples

```cpp
#include <deque>
#include <cassert>

std::deque<int> values{1, 2, 3};

assert(values.back() == 3);
```
