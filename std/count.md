---
symbol: std::count
header: <algorithm>
since: C++98
---

Returns the number of elements in the range `[first, last)` that are equal to `value`.

## Usage

```cpp
template<class InputIt, class T>
typename iterator_traits<InputIt>::difference_type
count(InputIt first, InputIt last, const T& value); (1)

template<class ExecutionPolicy, class ForwardIt, class T>
typename iterator_traits<ForwardIt>::difference_type
count(ExecutionPolicy&& policy,
      ForwardIt first, ForwardIt last, const T& value); (2) [C++17]
```

Counts the number of elements matching `value` using `operator==`.

## Time complexity

Linear in the distance between `first` and `last`.

## Examples

```cpp
#include <algorithm>
#include <cassert>
#include <vector>

std::vector<int> v{1, 2, 3, 2, 5, 2};
assert(std::count(v.begin(), v.end(), 2) == 3);
assert(std::count(v.begin(), v.end(), 9) == 0);
```
