---
symbol: std::deque::size
header: <deque>
since: C++98
---

Returns the number of elements in the deque.

## Usage

```cpp
size_type size() const;
```

The number of elements in the deque is returned as a `size_type`.

## Examples

```cpp
#include <deque>
#include <cassert>

std::deque<int> values;
assert(values.size() == 0);
```

```cpp
#include <deque>
#include <cassert>

std::deque<int> values{1, 2, 3};
assert(values.size() == 3);
```
