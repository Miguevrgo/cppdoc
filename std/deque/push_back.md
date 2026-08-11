---
symbol: std::deque::push_back
header: <deque>
since: C++98
---

Appends a copy of `value` to the end of the deque.

## Usage

```cpp
void push_back(const T& value); (1)
void push_back(T&& value); (2) [C++11]
```

Appends the given element `value` to the end of the deque.

1. The new element is initialized as a copy of `value`.
2. The new element is moved.

## Exceptions

If an exception is thrown the function has no effect.

## Time complexity

Amortized O(1), a new block is allocated when the current one is full.

## Examples

```cpp
#include <deque>
#include <cassert>

std::deque<int> values{1, 2};

values.push_back(3);

assert(values.back() == 3);
assert(values.size() == 3);
```
