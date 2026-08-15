---
symbol: std::move
header: <utility>
since: C++11
---

Casts an expression to an rvalue reference, indicating that an object may be "moved from".

## Usage

```cpp
template<class T>
constexpr std::remove_reference_t<T>&& move(T&& t) noexcept;
```

Converts `t` to an rvalue reference (`T&&`). This is a compile-time cast equivalent to `static_cast<std::remove_reference_t<T>&&>(t)`.

It does not move anything by itself; rather, it allows move constructors and move assignment operators to be selected during overload resolution.

## Examples

```cpp
#include <cassert>
#include <string>
#include <utility>
#include <vector>

std::string str = "hello";
std::vector<std::string> v;

v.push_back(std::move(str));

assert(v[0] == "hello");
```
