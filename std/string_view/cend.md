---
symbol: std::string_view::cend
header: <string_view>
since: C++17
---

Returns a const iterator to one past the last character.

## Usage

```cpp
constexpr const_iterator cend() const noexcept;
```

Identical to `end()`, since `string_view::end()` already returns a `const_iterator`. The returned iterator acts as a placeholder and must not be dereferenced.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string_view>

std::string_view sv{"Hi"};

assert(sv.cend() - sv.cbegin() == 2);
```
