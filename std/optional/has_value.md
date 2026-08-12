---
symbol: std::optional::has_value
header: <optional>
since: C++17
---

Checks whether the optional holds a value.

## Usage

```cpp
constexpr bool has_value() const noexcept;
constexpr explicit operator bool() const noexcept;
```

Both return `true` if the optional holds a value, `false` otherwise.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <optional>

std::optional<int> opt;
assert(!opt.has_value());
assert(!opt);
```

```cpp
#include <cassert>
#include <optional>

std::optional<int> opt{43};
assert(opt.has_value());
assert(opt);
```
