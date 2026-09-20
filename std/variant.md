---
symbol: std::variant
header: <variant>
since: C++17
---

Type-safe union that holds a value of one of its alternative types.

## Definition

```cpp
template<class... Types>
class variant;
```

A `std::variant` holds exactly one value of the alternatives in `Types...`. A variant is not permitted to hold references, arrays, or the type `void`.

## Examples

```cpp
#include <cassert>
#include <string>
#include <variant>

std::variant<int, std::string> v = 42;
assert(std::holds_alternative<int>(v));
assert(std::get<int>(v) == 42);

v = "hello";
assert(std::holds_alternative<std::string>(v));
assert(std::get<std::string>(v) == "hello");
```
