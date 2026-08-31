---
symbol: std::string::rbegin
header: <string>
since: C++98
---

Returns a reverse iterator to the first character of the reversed string.

## Usage

```cpp
reverse_iterator rbegin(); (1)
const_reverse_iterator rbegin() const; (2)
```

Returns a reverse iterator equivalent to `reverse_iterator(end())`, so it points at the last character
of the string.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello"};
assert(*s.rbegin() == 'o');
*s.rbegin() = '!';
assert(s == "Hell!");
```
