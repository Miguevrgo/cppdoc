---
symbol: std::string::cend
header: <string>
since: C++11
---

Returns a const iterator to the character following the last character of the string.

## Usage

```cpp
const_iterator cend() const noexcept;
```

Returns a const iterator past the last character, acting as a placeholder. Dereferencing it is undefined
behavior.

## Time complexity

O(1)

## Examples

```cpp
#include <algorithm>
#include <cassert>
#include <string>

std::string s{"Hello"};
assert(std::count(s.cbegin(), s.cend(), 'l') == 2);
```
