---
symbol: std::source_location
header: <source_location>
since: C++20
---

Holds information about the place in the source code where it was created.

## Definition

```cpp
class source_location;
```

`source_location::current()` returns the file name, line, column and function name of the call site. When used as a default argument, it captures the caller position instead of the callee one, which replaces the `__FILE__` and `__LINE__` macros in logging and assertion helpers.

## Examples

```cpp
#include <print>
#include <source_location>
#include <string_view>

void log(std::string_view message,
         const std::source_location loc = std::source_location::current()) {
    std::print("{}:{} {}: {}\n", loc.file_name(), loc.line(), loc.function_name(), message);
}
```
