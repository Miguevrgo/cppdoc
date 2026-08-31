---
symbol: std::string::pop_back
header: <string>
since: C++11
---

Removes the last character of the string.

## Usage

```cpp
void pop_back();
```

Reduces the size of the string by one. Calling `pop_back` on an empty string is undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello!"};
s.pop_back();
assert(s == "Hello");
```
