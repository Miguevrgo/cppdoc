---
symbol: std::forward
header: <utility>
since: C++11
---

Forwards an argument to another function while preserving its original value category (lvalue or rvalue).

## Usage

```cpp
template<class T>
T&& forward(std::remove_reference_t<T>& t) noexcept; (1)

template<class T>
T&& forward(std::remove_reference_t<T>&& t) noexcept; (2)
```

Forwards an argument to another function while preserving its original value category (lvalue or rvalue). `constexpr` since C++14.

## Examples

```cpp
#include <cassert>
#include <utility>
#include <string>

bool was_rvalue = false;

void process(const std::string& _) { was_rvalue = false; }
void process(std::string&& _)      { was_rvalue = true; }

template<class T>
void wrapper(T&& arg) {
    process(std::forward<T>(arg));
}

std::string s = "test";
wrapper(s);
assert(!was_rvalue);

wrapper(std::string("temp"));
assert(was_rvalue);
```
