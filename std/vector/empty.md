---
symbol: std::vector::empty
header: <vector>
since: C++98
---

Checks if the vector has no elements.

## Usage

```cpp
bool empty() const;
```

Returns `true` if the vector is empty, `false` otherwise.

## Examples

```cpp
#include <vector>
#include <cassert>

std::vector<int> vec{};
assert(vec.empty());
```

```cpp
#include <vector>
#include <cassert>

std::vector<char> vec{};
vec.push_back('a');
assert(!vec.empty());
```
