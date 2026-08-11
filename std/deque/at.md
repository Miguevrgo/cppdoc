---
symbol: std::deque::at
header: <deque>
since: C++98
---

Returns a reference to the element at `pos`, with bounds checking.

## Usage

```cpp
reference at(size_type pos); (1)
const_reference at(size_type pos) const; (2)
```

Returns a reference to the element at `pos`, if `pos` is not within the deque, `std::out_of_range` is thrown.

## Exceptions

`std::out_of_range` if `pos >= size()`.

## Time complexity

O(1)

## Examples

```cpp
#include <deque>
#include <cassert>
#include <stdexcept>

std::deque<int> values{1, 2, 3};

assert(values.at(0) == 1);

try {
  values.at(3);
  assert(false);
} catch (const std::out_of_range&) {
}
```
