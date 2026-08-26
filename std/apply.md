---
symbol: std::apply
header: <tuple>
since: C++17
---

Invokes a Callable object with a tuple of arguments.

## Usage

```cpp
template<class F, class Tuple>
constexpr decltype(auto) apply(F&& f, Tuple&& t);
```

Invokes the Callable object `f` using the elements of `t` as arguments, as if by `std::invoke(std::forward<F>(f), std::get<I>(std::forward<Tuple>(t))...)`.

## Time complexity

O(1) (excluding the invocation time of `f`).

## Examples

```cpp
#include <cassert>
#include <tuple>

auto add = [](int a, int b, int c) { return a + b + c; };
auto result = std::apply(add, std::make_tuple(1, 2, 3));
assert(result == 6);
```
