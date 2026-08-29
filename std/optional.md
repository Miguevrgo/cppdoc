---
symbol: std::optional
header: <optional>
since: C++17
---

Wrapper type that may or may not contain a value of type `T`.

## Definition

```cpp
template<class T>
class optional;
```

A common use case for `optional` is the return value of a function that may fail.

## Examples

```cpp
#include <cassert>
#include <optional>
#include <string>

std::optional<int> parse(const std::string& s) {
    if (s.empty()) return std::nullopt;
    return std::stoi(s);
}

assert(parse("42").value_or(0) == 42);
assert(parse("").value_or(0) == 0);
```
