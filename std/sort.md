---
symbol: std::sort
header: <algorithm>
since: C++98
---

Sorts the elements in the range `[first, last)`.

## Usage

```cpp
template<class RandomIt>
void sort(RandomIt first, RandomIt last); (1)

template<class ExecutionPolicy, class RandomIt>
void sort(ExecutionPolicy&& policy,
           RandomIt first, RandomIt last); (2) [C++17]
template<class RandomIt, class Compare>
void sort(RandomIt first, RandomIt last, Compare comp); (3)
template<class ExecutionPolicy, class RandomIt, class Compare>
void sort(ExecutionPolicy&& policy,
           RandomIt first, RandomIt last, Compare comp); (4) [C++17]
```

Sorts the elements in the range `[first, last)` in ascending order. Is is not stable (equal elements order may not be preserved).

* **1.** Elements are sorted with respect to `operator<` until C++20 `std::less{}`.
* **3.** Elements are sorted using `comp`.
* **2–4.** Same but executed according to `policy`.

## Time complexity

O(N Log N) where N is the size of the range.

## Exceptions

The overloads with `ExecutionPolicy` report errors if

* The execution of a function invoked as part of the algorithm throws an exception, `std::terminate`.
* The algorithm fails to allocate memory, `std::bad_alloc`.

## Examples

```cpp
#include <array>
#include <cassert>
#include <algorithm>

std::array<int, 4> v{4, 3, 1, 2};
std::sort(v.begin(), v.end());
assert(v == std::array<int, 4>{1, 2, 3, 4});
std::sort(v.begin(), v.end(), std::greater<int>());
assert(v == std::array<int, 4>{4, 3, 2, 1});

```
