---
symbol: std::nullopt
header: <optional>
since: C++17
---

Constant of type `std::nullopt_t` used to indicate an empty `std::optional`.

## Definition

```cpp
inline constexpr nullopt_t nullopt{/* unspecified */};
```

`std::nullopt` indicates than an `std::optional` does not contain a value.

## Examples

```cpp
#include <cassert>
#include <optional>

std::optional<int> opt = 42;
assert(opt.has_value());

opt = std::nullopt;
assert(!opt.has_value());
```
