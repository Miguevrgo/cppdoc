---
symbol: std::string::begin
header: <string>
since: C++98
---

Returns an iterator to the first character of the string.

## Usage

```cpp
iterator begin(); (1)
const_iterator begin() const; (2)
```

Returns an iterator to the first character. If the string is empty, the returned iterator is equal to
`end()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello"};
auto it = s.begin();
assert(*it == 'H');
*it = 'J';
assert(s == "Jello");
```
