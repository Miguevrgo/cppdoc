---
symbol: std::string_view::substr
header: <string_view>
since: C++17
---

Returns a view of the substring `[pos, pos + count)`.

## Usage

```cpp
constexpr basic_string_view substr(size_type pos = 0, size_type count = npos) const;
```

Returns a view of the substring `[pos, pos + count)`. If `pos + count` were to exceed the string_view
size, it returns the substring `[pos, size()]`.

## Exceptions

`std::out_of_range` if `pos > size()`

## Examples

```cpp
#include <string_view>
#include <cassert>

std::string_view data{"Hello"};
assert(data.substr() == "Hello");
assert(data.substr(1) == "ello");
assert(data.substr(1, 2) == "el");
```

```cpp
#include <string_view>
#include <cassert>

std::string_view data{"Hello"};
try {
    auto _ = data.substr(666, 1);
} catch (std::out_of_range const& err){
    std::print(stderr, "{}", err.what());
}
```
