---
symbol: std::deque::end
header: <deque>
since: C++98
---

Returns an iterator to the element following the last element of the deque.

## Usage

```cpp
iterator end(); (1)
const_iterator end() const; (2)
```

1. Returns a mutable past-the-end iterator.
2. Returns a const past-the-end iterator.

This iterator acts as a placeholder; dereferencing it is undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <deque>

std::deque<int> values{1, 2, 3};

assert(*(values.end() - 1) == 3);
assert(values.begin() + 3 == values.end());
```
