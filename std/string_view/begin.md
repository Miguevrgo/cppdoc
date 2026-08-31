---
symbol: std::string_view::begin
header: <string_view>
since: C++17
---

Returns an iterator to the first character.

## Usage

```cpp
constexpr const_iterator begin() const noexcept;
```

`iterator` and `const_iterator` are the same type, since `string_view` only allows read access to the characters it views. If the view is empty, the returned iterator equals `end()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string_view>

std::string_view sv{"Hello"};

auto it = sv.begin();
assert(*it == 'H');
assert(*(sv.end() - 1) == 'o');
```
