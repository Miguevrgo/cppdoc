---
symbol: std::string::back
header: <string>
since: C++98
---

Accesses the last character of the string.

## Usage

```cpp
reference back(); (1)
const_reference back() const; (2)
```

Returns a reference to the last character, equivalent to `operator[](size() - 1)`. Calling `back` on an
empty string is undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello"};
assert(s.back() == 'o');
s.back() = '!';
assert(s == "Hell!");
```
