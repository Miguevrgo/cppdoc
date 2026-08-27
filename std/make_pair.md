---
symbol: std::make_pair
header: <utility>
since: C++98
---

Creates a `std::pair` object, deducing the target types from the types of arguments.

## Usage

```cpp
template<class T1, class T2>
constexpr std::pair<V1, V2> make_pair(T1&& t, T2&& u);
```

Creates a pair from `t` and `u`. Type deduction unwraps `std::reference_wrapper<T>` into `T&` and decays array/function types.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>
#include <utility>

auto p1 = std::make_pair(1, "hello");
assert(p1.first == 1);
assert(p1.second == "hello");

int x = 10;
auto p2 = std::make_pair(std::ref(x), 20);
p2.first = 99;
assert(x == 99);
```
