---
symbol: std::deque::rend
header: <deque>
since: C++98
---

Returns a reverse iterator to the element following the last element of the reversed deque.

## Usage

```cpp
reverse_iterator rend(); (1)
const_reverse_iterator rend() const; (2)
```

The returned iterator corresponds to the element preceding the first element of the non-reversed deque. It acts as a placeholder; dereferencing it is undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <deque>

std::deque<int> values{1, 2, 3};

assert(*(values.rend() - 1) == 1);
```
