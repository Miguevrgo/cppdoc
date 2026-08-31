---
symbol: std::string_view::cbegin
header: <string_view>
since: C++17
---

Returns a const iterator to the first character.

## Usage

```cpp
constexpr const_iterator cbegin() const noexcept;
```

Identical to `begin()`, since `string_view::begin()` already returns a `const_iterator`. If the view is empty, the returned iterator equals `cend()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string_view>

std::string_view sv{"Hello"};

auto it = sv.cbegin();
assert(*it == 'H');
```
