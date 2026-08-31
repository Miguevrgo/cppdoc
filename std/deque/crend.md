---
symbol: std::deque::crend
header: <deque>
since: C++11
---

Returns a const reverse iterator to the element following the last element of the reversed deque.

## Usage

```cpp
const_reverse_iterator crend() const noexcept;
```

The returned iterator corresponds to the element preceding the first element of the non-reversed deque. It acts as a placeholder; dereferencing it is undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <deque>

std::deque<int> values{1, 2, 3};

assert(*(values.crend() - 1) == 1);
```
