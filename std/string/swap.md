---
symbol: std::string::swap
header: <string>
since: C++98
---

Exchanges the contents and capacity of the string with those of `other`.

## Usage

```cpp
void swap(basic_string& other);
```

All iterators and references remain valid, but now refer to the same character inside the other string.

`std::swap(a, b)` calls this member overload rather than swapping characters one by one.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>

std::string a{"Hello"};
std::string b{"World"};

a.swap(b);

assert(a == "World");
assert(b == "Hello");
```
