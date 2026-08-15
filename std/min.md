---
symbol: std::min
header: <algorithm>
since: C++98
---

Returns the smaller of the given values.

## Usage

```cpp
template<class T>
constexpr const T& min(const T& a, const T& b); (1)

template<class T, class Compare>
constexpr const T& min(const T& a, const T& b, Compare comp); (2)

template<class T>
constexpr T min(std::initializer_list<T> ilist); (3) [C++11]

template<class T, class Compare>
constexpr T min(std::initializer_list<T> ilist, Compare comp); (4) [C++11]
```

Returns the smaller of the given values.
1, 2. The smaller of `a` and `b`. Uses `operator<` to compare the values or `comp` in (2).
3, 4. Returns the smallest value in the initializer list `ilist`

## Time complexity

- O(1) for 1,2 (One comparison)
- O(n) for 3,4 (N-1 Comparisons)

## Examples

```cpp
#include <algorithm>
#include <cassert>

assert(std::min(3, 7) == 3);
assert(std::min({5, 2, 8, 1, 9}) == 1);
```

```cpp
#include <algorithm>
#include <string_view>
#include <cassert>

auto shortest = [](const std::string_view s1, const std::string_view s2) {
    return s1.size() < s2.size();
};
assert(strcmp("short", std::min({"longest", "short"}, shortest)) == 0);
```
