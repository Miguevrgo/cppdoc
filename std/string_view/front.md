---
symbol: std::string_view::front
header: <string_view>
since: C++17
---

Accesses the first character of the string view.

## Usage

```cpp
constexpr const_reference front() const;
```

Returns a reference to the first element in the view. If it is empty, the behaviour was undefined until C++26, after that if the implementation is hardened a contract violation occurs.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string_view>

std::string_view sv{"Hello"};
assert(sv.front() == 'H');
```
