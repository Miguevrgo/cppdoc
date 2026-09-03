---
symbol: std::runtime_error
header: <stdexcept>
since: C++98
---

Exception class used to report errors that can only be detected at runtime.

## Definition

```cpp
class runtime_error : public std::exception;
```

Standard exception class derived from `std::exception`. Used for conditions that cannot easily be predicted beforehand or avoided at compile time.

## Usage

```cpp
runtime_error(const std::string& what_arg); (1)
runtime_error(const char* what_arg); (2)
runtime_error(const runtime_error& other); (3)
```

Constructs the exception with an explanatory string accessible via `.what()`.

## Examples

```cpp
#include <cassert>
#include <stdexcept>
#include <string>

void check_config(bool valid) {
    if (!valid) {
        throw std::runtime_error("invalid configuration");
    }
}

try {
    check_config(false);
} catch (const std::runtime_error& e) {
    assert(std::string(e.what()) == "invalid configuration");
}
```
