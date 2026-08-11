---
symbol: std::deque::empty
header: <deque>
since: C++98
---

Checks if the deque is empty.

## Usage

```cpp
bool empty() const;
```

Returns `true` if the deque is empty, `false` otherwise.

## Examples

```cpp
#include <deque>
#include <cassert>

std::deque<int> values;
assert(values.empty());
```

```cpp
#include <deque>
#include <cassert>

std::deque<int> values{1, 2, 3};
assert(!values.empty());
```
