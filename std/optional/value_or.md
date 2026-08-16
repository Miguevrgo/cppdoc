---
symbol: std::optional::value_or
header: <optional>
since: C++17
---

Returns the value contained or returns `default_value`.

## Usage

```cpp
template<class U = std::remove_cv_t<T>>
constexpr T value_or(U&& default_value) const &; (1)
template<class U = std::remove_cv_t<T>>
constexpr T value_or(U&& default_value) &&; (2)
```

Returns the contained value or `default_value` if its empty.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <optional>

std::optional<int> opt{43};
assert(opt.value_or(10) == 43);
```

```cpp
#include <cassert>
#include <optional>

std::optional<int> opt{};
assert(opt.value_or(10) == 10);
```
