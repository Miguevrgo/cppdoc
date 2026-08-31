---
symbol: std::deque::begin
header: <deque>
since: C++98
---

Returns an iterator to the first element of the deque.

## Usage

```cpp
iterator begin(); (1)
const_iterator begin() const; (2)
```

1. Returns a mutable iterator to the first element.
2. Returns a const iterator to the first element.

If the deque is empty, the returned iterator equals `end()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <deque>

std::deque<int> values{1, 2, 3};

assert(*values.begin() == 1);
*values.begin() = 10;
assert(values.front() == 10);
```
