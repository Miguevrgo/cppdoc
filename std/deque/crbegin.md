---
symbol: std::deque::crbegin
header: <deque>
since: C++11
---

Returns a const reverse iterator to the first element of the reversed deque.

## Usage

```cpp
const_reverse_iterator crbegin() const noexcept;
```

The returned iterator corresponds to the last element of the non-reversed deque. If the deque is empty, the returned iterator equals `crend()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <deque>

std::deque<int> values{1, 2, 3};

auto it = values.crbegin();
assert(*it == 3);
```
