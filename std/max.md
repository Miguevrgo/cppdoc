---
symbol: std::max
header: <algorithm>
since: C++98
---

Returns the greater of the given values.

## Usage

```cpp
template<class T>
constexpr const T& max(const T& a, const T& b); (1)

template<class T, class Compare>
constexpr const T& max(const T& a, const T& b, Compare comp); (2)

template<class T>
constexpr T max(std::initializer_list<T> ilist); (3) [C++11]

template<class T, class Compare>
constexpr T max(std::initializer_list<T> ilist, Compare comp); (4) [C++11]
```

Returns the greater of the given values.
1, 2. The greater of `a` and `b`. Uses `operator<` to compare the values or `comp` in (2).
3, 4. Returns the greatest value in the initializer list `ilist`

## Time complexity

- O(1) for 1,2 (One comparison)
- O(n) for 3,4 (N-1 Comparisons)

## Examples

```cpp
#include <algorithm>
#include <cassert>

assert(std::max(3, 7) == 7);
assert(std::max({5, 2, 8, 1, 9}) == 9);
```

```cpp
#include <algorithm>
#include <string_view>
#include <cassert>

auto longest = [](const std::string_view s1, const std::string_view s2) {
    return s1.size() < s2.size();
};
assert(strcmp("longest", std::max({"longest", "short"}, longest)) == 0);
```
