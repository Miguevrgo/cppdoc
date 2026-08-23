---
symbol: std::string_view::back
header: <string_view>
since: C++17
---

Accesses the last character of the string view.

## Usage

```cpp
constexpr const_reference back() const;
```

Returns a reference to the last element in the view. If it is empty, the behaviour was undefined until C++26, after that if the implementation is hardened a contract violation occurs.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string_view>

std::string_view sv{"Hello"};
assert(sv.back() == 'o');
```
