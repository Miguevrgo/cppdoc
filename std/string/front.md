---
symbol: std::string::front
header: <string>
since: C++98
---

Accesses the first character of the string.

## Usage

```cpp
reference front(); (1)
const_reference front() const; (2)
```

Returns a reference to the first character, equivalent to `operator[](0)`. Calling `front` on an empty
string is undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello"};
assert(s.front() == 'H');
s.front() = 'J';
assert(s == "Jello");
```
