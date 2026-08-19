---
symbol: std::string::reserve
header: <string>
since: C++98
---

Increase the capacity of the string to a value at least as big as the given value. It may reserve more so reallocation frequency is decreased.

## Usage

```cpp
void reserve(size_type new_cap);
```

Increases the capacity of the string to at least `new_cap`, if `new_cap` is lower than current capacity it does nothing.

## Exceptions

`std::length_error` if `new_cap > max_size()`, also any exception related to the allocation. If an exception is thrown it has no effect.

## Time complexity

Linear with the size of the string.

## Examples

```cpp
#include <string>
#include <cassert>

std::string str{"Hello"};
str.reserve(8);
assert(str.capacity() >= 8);
```
