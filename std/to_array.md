---
symbol: std::to_array
header: <array>
since: C++20
---

Creates a `std::array` from a built-in C-style array.

## Usage

```cpp
template<class T, std::size_t N>
constexpr std::array<std::remove_cv_t<T>, N> to_array(T (&a)[N]); (1)

template<class T, std::size_t N>
constexpr std::array<std::remove_cv_t<T>, N> to_array(T (&&a)[N]); (2)
```

1. Copies the elements of the lvalue C-style array `a` into a new `std::array`.
2. Moves the elements of the rvalue C-style array `a` into a new `std::array`.

`T` must not be an array of unknown bound, and must be copy-constructible for (1) or move-constructible for (2).

## Time complexity

Linear in `N`.

## Examples

```cpp
#include <array>
#include <cassert>

int c_arr[3] = {1, 2, 3};
std::array<int, 3> arr = std::to_array(c_arr); // (1) elements are copied

assert((arr == std::array{1, 2, 3}));
assert(c_arr[0] == 1); // c_arr is unaffected
```

```cpp
#include <array>
#include <cassert>

auto arr = std::to_array<int>({1, 2, 3, 4}); // (2) elements are moved from a temporary

assert(arr.size() == 4);
assert((arr == std::array{1, 2, 3, 4}));
```
