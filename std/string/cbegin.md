---
symbol: std::string::cbegin
header: <string>
since: C++11
---

Returns a const iterator to the first character of the string.

## Usage

```cpp
const_iterator cbegin() const noexcept;
```

Returns a const iterator to the first character, usable even on a non-const string when mutation is not
wanted. Equal to `end()` if the string is empty.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>

std::string s{"Hello"};
auto it = s.cbegin();
assert(*it == 'H');
```
