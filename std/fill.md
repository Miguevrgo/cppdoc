---
symbol: std::fill
header: <algorithm>
since: C++98
---

Assigns the given value to each element in the range `[first, last)`.

## Usage

```cpp
template<class ForwardIt, class T>
void fill(ForwardIt first, ForwardIt last, const T& value); (1)

template<class ExecutionPolicy, class ForwardIt, class T>
void fill(ExecutionPolicy&& policy,
          ForwardIt first, ForwardIt last, const T& value); (2)
```

Assigns `value` to every element in the range `[first, last)`.

## Time complexity

Linear in the distance between `first` and `last`. Exactly `last - first` assignments.

## Examples

```cpp
#include <algorithm>
#include <cassert>
#include <vector>

std::vector<int> v(5);
std::fill(v.begin(), v.end(), 42);

assert((v == std::vector<int>{42, 42, 42, 42, 42}));
```
