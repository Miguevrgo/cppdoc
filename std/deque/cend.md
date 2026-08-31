---
symbol: std::deque::cend
header: <deque>
since: C++11
---

Returns a const iterator to the element following the last element of the deque.

## Usage

```cpp
const_iterator cend() const noexcept;
```

Returns a const past-the-end iterator, usable even on a non-const deque to guarantee a read-only iterator. Dereferencing it is undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <deque>

std::deque<int> values{1, 2, 3};

assert(values.cbegin() + 3 == values.cend());
```
