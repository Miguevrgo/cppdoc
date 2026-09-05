---
symbol: std::expected
header: <expected>
since: C++23
---

Wrapper type holding either an expected value of type `T` or an error of type `E`.

## Definition

```cpp
template<class T, class E>
class expected;
```

Unlike `std::optional`, a failed `expected` carries the reason of the failure. An error is built with `std::unexpected`. Reading `value()` on an unexpected object throws `std::bad_expected_access`.

## Examples

```cpp
#include <cassert>
#include <charconv>
#include <expected>
#include <string_view>
#include <system_error>

enum class Error { empty, not_a_number };

auto parse(std::string_view str) -> std::expected<double, Error> {
    double val{};
    auto [ptr, ec] = std::from_chars(str.data(), str.data() + str.size(), val);

    if (ec == std::errc::invalid_argument) {
        return std::unexpected(Error::not_a_number);
    }

    return val;
}

assert(parse(std::string_view("42")).value() == 42);
assert(parse("42abc").value() == 42);
assert(parse("a").error() == Error::not_a_number);
```
