---
symbol: std::vector::size
header: <vector>
since: C++98
---

Returns the number of elements in the vector.

## Usage

```cpp
size_type size() const;
```

The number of elements in the vector is returned as a `size_type`.

## Examples

```cpp
#include <vector>
#include <cassert>

std::vector<int> vec{};
assert(vec.size() == 0);
```

```cpp
#include <vector>
#include <cassert>

std::vector<char> vec{};
vec.push_back('a');
assert(vec.size() == 1);
```
