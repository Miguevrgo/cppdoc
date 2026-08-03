---
symbol: std::vector::erase
header: <vector>
since: C++98
---

Erases the specified element(s) from the vector.

## Usage

```cpp
iterator erase(iterator pos); (1) [C++98, until C++11]
iterator erase(const_iterator pos); (1) [C++11]
iterator erase(iterator first, iterator last); (2) [C++98, until C++11]
iterator erase(const_iterator first, const_iterator last); (2) [C++11]
```

1. Removes the element at pos from the vector.
2. Removes the elements in the range `[first, last]` from the vector. Iterators and references to the elements are invalidated.

## Time complexity

Linear with the elements erased for the destructor calls, as well as for the assignment operator for those elements in the vector after the erased ones.

## Examples

```cpp
#include <cassert>
#include <vector>

std::vector<int> vec{1, 2, 3, 4, 5, 6, 7, 8};

// To remove an element when order doesn't matter, swap it with the last
// element and pop_back instead of erase: O(1) instead of linear, since
// nothing has to shift.
std::swap(*(vec.begin() + 2), vec.back());
vec.pop_back();

assert((vec == std::vector<int>{1, 2, 8, 4, 5, 6, 7}));
```

```cpp
#include <cassert>
#include <vector>

std::vector<int> vec{1, 2, 3, 4, 5, 6, 7, 8};
vec.erase(vec.cbegin(), vec.cbegin() + 3);

assert((vec == std::vector<int>{4, 5, 6, 7, 8}));
```
