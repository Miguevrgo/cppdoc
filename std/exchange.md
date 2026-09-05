---
symbol: std::exchange
header: <utility>
since: C++14
---

Replaces the value of an object and returns its old value.

## Usage

```cpp
template<class T, class U = T>
constexpr T exchange(T& obj, U&& new_value);
```

Assigns `new_value` to `obj` and returns the value `obj` held before the call. Typically used in move constructors and move assignment operators to leave the source in a valid empty state in a single expression.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <utility>

int counter = 5;
int old = std::exchange(counter, 10);

assert(old == 5);
assert(counter == 10);
```
