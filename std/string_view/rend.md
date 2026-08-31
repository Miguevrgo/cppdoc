---
symbol: std::string_view::rend
header: <string_view>
since: C++17
---

Returns a reverse iterator to one before the first character.

## Usage

```cpp
constexpr const_reverse_iterator rend() const noexcept;
```

The returned iterator acts as a placeholder and must not be dereferenced. It marks the end of a reverse iteration started at `rbegin()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>
#include <string_view>

std::string_view sv{"abc"};
std::string reversed;

for (auto it = sv.rbegin(); it != sv.rend(); ++it) reversed += *it;

assert(reversed == "cba");
```
