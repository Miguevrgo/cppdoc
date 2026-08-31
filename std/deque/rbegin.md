---
symbol: std::deque::rbegin
header: <deque>
since: C++98
---

Returns a reverse iterator to the first element of the reversed deque.

## Usage

```cpp
reverse_iterator rbegin(); (1)
const_reverse_iterator rbegin() const; (2)
```

The returned iterator corresponds to the last element of the non-reversed deque. If the deque is empty, the returned iterator equals `rend()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <deque>

std::deque<int> values{1, 2, 3};

assert(*values.rbegin() == 3);
```
