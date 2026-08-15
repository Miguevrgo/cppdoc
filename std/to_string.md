---
symbol: std::to_string
header: <string>
since: C++11
---

Converts a numerical value to a `std::string`.

## Usage

```cpp
std::string to_string(int value);
std::string to_string(long value);
std::string to_string(long long value);
std::string to_string(unsigned value);
std::string to_string(unsigned long value);
std::string to_string(unsigned long long value);
std::string to_string(float value);
std::string to_string(double value);
std::string to_string(long double value);
```

Converts `value` to a `std::string` containing the decimal representation. From C++ 26 as if by
`std::format("{}", value)`

## Exceptions

Throws `std::bad_alloc` if string memory allocation fails.

## Examples

```cpp
#include <cassert>
#include <string>

std::string s1 = std::to_string(42);
std::string s2 = std::to_string(-3.14);
assert(s1 == "42");
assert(s2.rfind("-3.14", 0) == 0);
```
