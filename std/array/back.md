---
symbol: std::array::back
header: <array>
since: C++11
---

Returns a reference to the last element in the array.

## Usage

```cpp
reference back();
const_reference back() const;
```

Returns a reference to the last element of the array.

## Time complexity

O(1)

## Examples

```cpp
#include <array>
#include <cassert>

std::array<char, 3> char_vec{'a', 'b', 'c'};

assert(char_vec.back() == 'c');
```
