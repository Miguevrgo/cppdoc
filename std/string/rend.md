---
symbol: std::string::rend
header: <string>
since: C++98
---

Returns a reverse iterator to the character following the last character of the reversed string.

## Usage

```cpp
reverse_iterator rend(); (1)
const_reverse_iterator rend() const; (2)
```

Returns a reverse iterator equivalent to `reverse_iterator(begin())`, acting as a placeholder.
Dereferencing it is undefined behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello"};
std::string reversed;
for (auto it = s.rbegin(); it != s.rend(); ++it) {
    reversed += *it;
}
assert(reversed == "olleH");
```
