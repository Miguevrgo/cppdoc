---
symbol: std::string::at
header: <string>
since: C++98
---

Accesses the character at specified index with bounds checking.

## Usage

```cpp
reference at(size_type pos); (1)
const_reference at(size_type pos) const; (2)
```

Returns a reference to the character at position `pos`, after verifying that `pos < size()`.

## Exceptions

Throws `std::out_of_range` if `pos >= size()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello"};
assert(s.at(1) == 'e');
s.at(1) = 'a';
assert(s == "Hallo");
```

```cpp
#include <string>
#include <stdexcept>

std::string s{"Hi"};
try {
    char c = s.at(5);
} catch (std::out_of_range const& err) {
    // handle the out-of-range access
}
```
