---
symbol: std::optional::transform
header: <optional>
since: C++23
---

Returns an optional containing the result of applying `f` to the contained value, or an empty optional.

## Usage

```cpp
template<class F>
constexpr auto transform(F&& f) &; (1)
template<class F>
constexpr auto transform(F&& f) const &; (2)
template<class F>
constexpr auto transform(F&& f) &&; (3)
template<class F>
constexpr auto transform(F&& f) const &&; (4)
```

If `*this` contains a value, returns a `std::optional` containing the result of `std::invoke(std::forward<F>(f), value())`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <optional>
#include <string>

std::optional<int> opt{21};
assert(opt.transform([](int n) { return n * 2; }) == 42);
std::optional<int> empty{};
assert(!empty.transform([](int n) { return n * 2; }).has_value());
```
