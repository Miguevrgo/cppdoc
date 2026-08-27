---
symbol: std::as_const
header: <utility>
since: C++17
---

Forms an lvalue reference to `const` from an argument.

## Usage

```cpp
template<class T>
constexpr std::add_const_t<T>& as_const(T& t) noexcept; (1)

template<class T>
void as_const(const T&&) = delete; (2)
```

1. Converts an lvalue reference `t` to a `const` lvalue reference (`const T&`).
2. Disallows rvalue arguments to prevent dangling references.

## Time complexity

O(1)

## Examples

```cpp
#include <string>
#include <utility>

std::string s = "mutable";
const auto& cs = std::as_const(s);
s.clear();
// cs.clear(); // Error

```
