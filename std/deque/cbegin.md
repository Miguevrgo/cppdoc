---
symbol: std::deque::cbegin
header: <deque>
since: C++11
---

Returns a const iterator to the first element of the deque.

## Usage

```cpp
const_iterator cbegin() const noexcept;
```

Returns a const iterator to the first element, usable even on a non-const deque to guarantee a read-only iterator. If the deque is empty, the returned iterator equals `cend()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <deque>

std::deque<int> values{1, 2, 3};

auto it = values.cbegin();
assert(*it == 1);
```
