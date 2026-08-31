---
symbol: std::string_view::rbegin
header: <string_view>
since: C++17
---

Returns a reverse iterator to the last character.

## Usage

```cpp
constexpr const_reverse_iterator rbegin() const noexcept;
```

Iterates the view in reverse; `*rbegin()` is equivalent to `*(end() - 1)`. If the view is empty, the returned iterator equals `rend()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string_view>

std::string_view sv{"abc"};

assert(*sv.rbegin() == 'c');
```
