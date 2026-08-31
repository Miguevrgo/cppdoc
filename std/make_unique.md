---
symbol: std::make_unique
header: <memory>
since: C++14
---

Constructs an object of type `T` and wraps it in a `unique_ptr`.

## Usage

```cpp
template<class T, class... Args>
unique_ptr<T> make_unique(Args&&... args); (1)

template<class T>
unique_ptr<T> make_unique(std::size_t size); (2)
```

(1) Forwards `args` to a constructor of `T`, for non-array types.
(2) For array types `T = U[]`, constructs an array of `size` default-initialized `U` elements.

Prefer `make_unique` over `unique_ptr<T>(new T(...))`: it avoids naming `T` twice, and cannot leak memory when used as a function argument, since there is no separately-sequenced `new` expression that could throw between allocation and the object being handed to a smart pointer.

## Time complexity

O(1) plus the cost of constructing `T`, not counting the allocation itself.

## Examples

```cpp
#include <cassert>
#include <memory>
#include <string>

auto ptr = std::make_unique<std::string>("hello");
assert(*ptr == "hello");

auto arr = std::make_unique<int[]>(3);
arr[0] = 1;
arr[1] = 2;
arr[2] = 3;
assert(arr[1] == 2);
```
