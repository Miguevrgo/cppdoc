---
symbol: std::format
header: <format>
since: C++20
---

Builds a `std::string` from a format string and its arguments.

## Usage

```cpp
template<class... Args>
std::string format(std::format_string<Args...> fmt, Args&&... args); (1)

template<class... Args>
std::string format(const std::locale& loc,
                   std::format_string<Args...> fmt, Args&&... args); (2)
```

1. Formats `args` using the default locale-independent rules.
2. Formats `args` using `loc` for locale-dependent conversions.

Each `{}` in `fmt` is replaced by the next argument. A replacement field takes the form `{index:spec}`, where both parts are optional: `{0}` picks an argument by position and `{:>8.3f}` sets fill, alignment, width and precision.

## Exceptions

Throws `std::bad_alloc` on allocation failure or any exception thrown by formatter

## Examples

```cpp
#include <cassert>
#include <format>
#include <string>

assert(std::format("{} + {} = {}", 2, 3, 5) == "2 + 3 = 5");
assert(std::format("{1} {0}", "world", "hello") == "hello world");
assert(std::format("{:.3f}", 3.14159) == "3.142");
assert(std::format("{:>5}", 42) == "   42");
assert(std::format("{:#x}", 255) == "0xff");
```
