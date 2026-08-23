---
symbol: std::tie
header: <tuple>
since: C++11
---

Creates a `std::tuple` of lvalue references to its arguments.

## Usage

```cpp
template<class... Types>
constexpr std::tuple<Types&...> tie(Types&... args) noexcept; (1) [constexpr since C++14]
```

Creates a tuple of lvalue references to `args`. Can be used to unpack a tuple into separate variables, or for implementing lexicographical comparisons.

Ignored elements can be skipped using `std::ignore`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>
#include <tuple>

auto get_user = [] { return std::make_tuple(1, "Alice", true); };

int id;
std::string name;
std::tie(id, name, std::ignore) = get_user();

assert(id == 1);
assert(name == "Alice");
```

```cpp
#include <cassert>
#include <tuple>

struct Point {
    int x, y, z;
    bool operator<(const Point& other) const {
        return std::tie(x, y, z) < std::tie(other.x, other.y, other.z);
    }
};

Point p1{1, 2, 3};
Point p2{1, 2, 4};
assert(p1 < p2);
```
