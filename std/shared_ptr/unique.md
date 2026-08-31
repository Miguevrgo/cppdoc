---
symbol: std::shared_ptr::unique
header: <memory>
since: C++11
---

Checks whether `*this` is the sole owner of the managed object.

## Usage

```cpp
bool unique() const noexcept;
```

Equivalent to `use_count() == 1`. Deprecated in C++17 and **removed in C++20**, since the result is unreliable in the presence of concurrent `weak_ptr::lock()` calls on other threads. Prefer `use_count() == 1` where the same caveat applies, or avoid the check entirely.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <memory>

auto a = std::make_shared<int>(42);
assert(a.unique());

auto b = a;
assert(!a.unique());
```
