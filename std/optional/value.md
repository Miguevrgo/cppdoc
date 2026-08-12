---
symbol: std::optional::value
header: <optional>
since: C++17
---

Returns the value contained or throws `std::bad_optional_access`

## Usage

```cpp

constexpr T& value() &;
constexpr const T& value() const &; (1)

constexpr T&& value() &&;
constexpr const T&& value() const &&; (2)
```

If the optional contains a value, returns a reference to it, otherwise, throws `std::bad_optional_access` exception.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <optional>

std::optional<int> opt{43};
assert(opt.value() == 43);
```

```cpp
#include <cassert>
#include <optional>
#include <print>

std::optional<int> opt{};

try {
    int _ = opt.value();
} catch(const std::bad_optional_access& e) {
    std::println("Error: {}", e.what());
}
```
