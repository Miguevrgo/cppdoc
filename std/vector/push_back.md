---
symbol: std::vector::push_back
header: <vector>
since: C++98
---

Appends an element to the end of the vector.

## Usage

```cpp
void push_back(const T& value); (1)
void push_back(T&& value); (2) [C++11]
```

1. The new element is initialized as a copy of `value`
2. The `value` is moved into the new position

## Exceptions

If there is an error in the allocation or in the copy/move constructor this function has no effect.

## Time complexity

Takes amortized O(1) time. If the vector's length would exceed its capacity, then O(capacity) time is taken to reallocate and move the elements into the new allocation.

## Examples

```cpp
#include <vector>
#include <cassert>

std::vector<int> vec{2, 3, 4};
vec.push_back(5); // (1) value is copied
assert((vec == std::vector{2, 3, 4, 5}));
```

```cpp
#include <cassert>
#include <string>
#include <utility>
#include <vector>

std::vector<std::string> vec;
std::string str = "hello";

vec.push_back(std::move(str)); // (2) value is moved
vec.push_back(std::string("world")); // (2) value is moved
assert((vec == std::vector<std::string>{"hello", "world"}));
```
