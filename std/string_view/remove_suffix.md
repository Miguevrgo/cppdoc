---
symbol: std::string_view::remove_suffix
header: <string_view>
since: C++17
---

Moves the end of the view back by `n` characters.

## Usage

```cpp
constexpr void remove_suffix(size_type n);
```

Removes `n` characters from the end of the view. If `n > size()` behavior was undefined until C++26, after that if implementation is hardened, a contract violation occurs.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string_view>

std::string_view sv{"Error: Not found [E142]"};
sv.remove_suffix(7);
assert(sv == "Error: Not found");
```
