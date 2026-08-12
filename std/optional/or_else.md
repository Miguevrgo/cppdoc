---
symbol: std::optional::or_else
header: <optional>
since: C++23
---

Returns the contained value, otherwise returns the result of `f`.

## Usage

```cpp
template<class F>
constexpr optional or_else(F&& f) const &; (1)

template<class F>
constexpr optional or_else(F&& f) &&; (2)
```

Returns the contained value, otherwise returns the result of `f` which is a function or Callable object that returns an `std::optional<T>`.

## Time complexity

O(1)

## Examples

```cpp
#include <optional>
#include <print>

auto valueless = []{
    std::cout << "Valueless: ";
    return std::optional<int>{0};
};
std::optional<int> opt{43};
std::println("{}", opt.or_else(valueless).value()); // 43
opt.reset();
std::println("{}", opt.or_else(valueless).value()); // Valueless: 0
```
