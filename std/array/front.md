---
symbol: std::array::front
header: <array>
since: C++11
---

Returns a reference to the first element in the array.

## Usage

```cpp
reference front();
const_reference front() const;
```

Returns a reference to the first element of the array.

## Time complexity

O(1)

## Examples

```cpp
#include <array>
#include <cassert>

std::array<char, 3> char_vec{'a', 'b', 'c'};

assert(char_vec.front() == 'a');
```
