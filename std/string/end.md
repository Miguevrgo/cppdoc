---
symbol: std::string::end
header: <string>
since: C++98
---

Returns an iterator to the character following the last character of the string.

## Usage

```cpp
iterator end(); (1)
const_iterator end() const; (2)
```

Returns an iterator past the last character, acting as a placeholder. Dereferencing it is undefined
behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <algorithm>
#include <cassert>
#include <string>

std::string s{"Hello"};
assert(std::count(s.begin(), s.end(), 'l') == 2);
```
