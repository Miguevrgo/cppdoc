---
symbol: std::vector::insert
header: <vector>
since: C++98
---

Inserts an element in the specified location inside the vector.

## Usage

```cpp
iterator insert(const_iterator pos, const T& value); (1)
iterator insert(const_iterator pos, T&& value); (2) [C++11]
iterator insert(const_iterator pos, size_type count, const T& value); (3)
template<class InputIt>
iterator insert(const_iterator pos, InputIt first, InputIt last); (4)
iterator insert( const_iterator pos, std::initializer_list<T> ilist ); (5) [C++11]
```

1. Inserts a copy of `value` before `pos`.
2. Inserts `value` before `pos`, using move semantics if possible.
3. Inserts `count` copies of the `value` before `pos`.
4. Inserts elements from range `[first, last]` before `pos`.
5. Inserts elements from initializer list `ilist` before `pos`.

## Exceptions

If an exception is thrown other than by the constructors, the assignment operators or any InputIt operation this function has no effect.

## Time complexity

- (1,2) Constant plus linear in the distance between `pos` and end of container (as it has to displace all the elements to the right one posisition)
- (3) Linear in `count` plus linear in the distance between `pos` and the end of the container.
- (4) Linear in `std::distance(first, last)` plus linear in the distance between `pos` and the end of the container.
- (5) Linear in `ilist.size()` plus linear in the distance between `pos` and the end of the container.

## Examples

```cpp
#include <cassert>
#include <string>
#include <vector>

std::vector<std::string> vec{"a", "c"};
std::string s = "b";

vec.insert(vec.begin() + 1, s);            // (1) copies s before position 1
vec.insert(vec.begin() + 2, std::move(s)); // (2) moves s before position 2

assert((vec == std::vector<std::string>{"a", "b", "b", "c"}));
assert(s.empty());
```

```cpp
#include <cassert>
#include <vector>

std::vector<int> vec{1};
std::vector<int> extra{4, 5};

vec.insert(vec.end(), 2, 9);                       // (3) two 9s
vec.insert(vec.end(), extra.begin(), extra.end()); // (4) copies the range in
vec.insert(vec.begin(), {-2, -1});                 // (5) initializer list at the front

assert((vec == std::vector<int>{-2, -1, 1, 9, 9, 4, 5}));
```
