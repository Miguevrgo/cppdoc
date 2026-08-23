---
symbol: std::optional::and_then
header: <optional>
since: C++23
---

Returns the result of applying `f` to the contained value if present, otherwise returns empty optional.

## Usage

```cpp
template<class F>
constexpr auto and_then(F&& f) &; (1)
template<class F>
constexpr auto and_then(F&& f) const &; (2)
template<class F>
constexpr auto and_then(F&& f) &&; (3)
template<class F>
constexpr auto and_then(F&& f) const &&; (4)
```

If `*this` contains a value, returns the result of `std::invoke(std::forward<F>(f), value())`. `f` must return a `std::optional`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <optional>
#include <string>

auto parse_int = [](std::string s) -> std::optional<int> {
    try {
        return std::stoi(s);
    } catch (...) {
        return std::nullopt;
    }
};

std::optional<std::string> valid{"42"};
std::optional<std::string> invalid{"abc"};
assert(valid.and_then(parse_int) == 42);
assert(invalid.and_then(parse_int) == std::nullopt);
```
