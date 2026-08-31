---
symbol: std::string::resize
header: <string>
since: C++98
---

Resizes the string in-place so that its size is equal to `count`.

## Usage

```cpp
void resize(size_type count); (1)
void resize(size_type count, CharT ch); (2)
```

Resizes the string to contain `count` characters. If the current size is greater, the string is
truncated, otherwise:

1. The string is extended with default-initialized characters (`'\0'`).
2. The string is extended with copies of `ch`.

## Exceptions

`std::length_error` if `count > max_size()`. If an exception is thrown the function has no effect.

## Time complexity

Linear in the difference between current size and `count`. Additional complexity is possible due to
reallocation if capacity is less than `count`.

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello"};
s.resize(3);
assert(s == "Hel");
s.resize(6, '!');
assert(s == "Hel!!!");
```
