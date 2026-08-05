---
symbol: std::array::size
header: <array>
since: C++11
---

Returns the number of elements in the array.

## Usage

```cpp
constexpr size_type size() const noexcept;
```

The number of elements in the array is returned as a `size_type`.

## Time complexity

O(1)

## Examples

```cpp
#include <array>
#include <cassert>

std::array<int, 0> arr;
assert(arr.size() == 0);
```

```cpp
#include <array>
#include <cassert>

std::array<char, 2> arr{'a', 'b'};
assert(arr.size() == 2);
```
