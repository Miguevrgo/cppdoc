---
symbol: std::string_view::remove_prefix
header: <string_view>
since: C++17
---

Moves the start of the view forward by `n` characters.

## Usage

```cpp
constexpr void remove_prefix(size_type n);
```

Removes `n` characters from the beginning of the view by advancing `data()` by `n` and decrementing `size()` by `n`. If `n > size()` behavior was undefined until C++26, after that if implementation is
hardened, a contract violation occurs.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string_view>

std::string_view sv{"[DEBUG] Error occurred"};
sv.remove_prefix(8);
assert(sv == "Error occurred");
```
