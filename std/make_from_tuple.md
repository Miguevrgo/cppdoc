---
symbol: std::make_from_tuple
header: <tuple>
since: C++17
---

Constructs an object of type `T` using the elements of a tuple as constructor arguments.

## Usage

```cpp
template<class T, class Tuple>
constexpr T make_from_tuple(Tuple&& t);
```

Constructs an object of type `T`, unpacking the elements of `t` as arguments passed to the constructor of `T`: `T(std::get<I>(std::forward<Tuple>(t))...)`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>
#include <tuple>

struct User {
    int id;
    std::string name;
    double score;
};

auto data = std::make_tuple(101, "Bob", 98.5);
User u = std::make_from_tuple<User>(data);

assert(u.id == 101);
assert(u.name == "Bob");
assert(u.score == 98.5);
```
