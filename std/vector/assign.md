---
symbol: std::vector::assign
header: <vector>
since: C++98
---

Replaces the contents of the vector.

## Usage

```cpp
void assign(size_type count, const T& value); (1)
template<class InputIt>
void assign(InputIt first, InputIt last); (2)
void assign(std::initializer_list<T> ilist); (3)
```

1. Replaces the contents with `count` copies of `value`.
2. Replaces the contents with copies of the elements in the range `[first, last)`.
3. Replaces the contents with the elements from the initializer list `ilist`.

All existing elements are destroyed and all iterators, pointers, and references to them are invalidated.

## Exceptions

If an exception is thrown other than by the copy/move constructor or assignment operator of `T`, this function has no effect.

## Time complexity

Linear in the new size of the vector, plus the size of the previous contents.

## Examples

```cpp
#include <cassert>
#include <vector>

std::vector<int> vec{1, 2, 3};

vec.assign(4, 9); // (1) four 9s
assert((vec == std::vector<int>{9, 9, 9, 9}));

std::vector<int> src{1, 2, 3};
vec.assign(src.begin(), src.end()); // (2) copy of the range
assert((vec == src));

vec.assign({7, 8, 9}); // (3) initializer list
assert((vec == std::vector<int>{7, 8, 9}));
```
