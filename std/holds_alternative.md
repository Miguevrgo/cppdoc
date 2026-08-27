---
symbol: std::holds_alternative
header: <variant>
since: C++17
---

Checks if a variant currently holds the given alternative type `T`.

## Usage

```cpp
template<class T, class... Types>
constexpr bool holds_alternative(const std::variant<Types...>& v) noexcept;
```

Returns `true` if the variant `v` currently holds the alternative of type `T`, `false` otherwise.

`T` must be exactly one of the alternative types in `Types...`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>
#include <variant>

std::variant<int, std::string> v = "hello";

assert(!std::holds_alternative<int>(v));
assert(std::holds_alternative<std::string>(v));
```
