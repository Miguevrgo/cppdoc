---
symbol: std::list::insert
header: <list>
since: C++98
---

Inserts elements before the specified position in the list.

## Usage

```cpp
iterator insert(const_iterator pos, const T& value);                  (1)
iterator insert(const_iterator pos, T&& value);                       (2) [C++11]
iterator insert(const_iterator pos, size_type count, const T& value); (3)
template<class InputIt>
iterator insert(const_iterator pos, InputIt first, InputIt last);     (4)
iterator insert(const_iterator pos, std::initializer_list<T> ilist);  (5) [C++11]
```

1. Inserts a copy of `value` before `pos`.
2. Inserts `value` before `pos`, using move semantics.
3. Inserts `count` copies of `value` before `pos`.
4. Inserts copies of the elements in range `[first, last)` before `pos`.
5. Inserts the elements of `ilist` before `pos`.

All overloads return an iterator to the first element inserted, or `pos` if no element was inserted. No existing iterators or references are invalidated.

## Exceptions

If an exception is thrown other than by the copy/move constructor of `T`, this function has no effect (strong exception guarantee).

## Time complexity

- (1,2) O(1)
- (3) O(count)
- (4) O(std::distance(first, last))
- (5) O(ilist.size())

## Examples

```cpp
#include <cassert>
#include <list>
#include <string>
#include <utility>

std::list<std::string> l{"a", "c"};
std::string s = "b";

auto it = l.begin();
++it;
l.insert(it, s); // (1) copy before "c"

assert((l == std::list<std::string>{"a", "b", "c"}));
```

```cpp
#include <cassert>
#include <list>

std::list<int> l{1};
std::list<int> extra{4, 5};

l.insert(l.end(), 2, 9);                       // (3) two 9s
l.insert(l.end(), extra.begin(), extra.end()); // (4) copies the range in
l.insert(l.begin(), {-1, 0});                  // (5) initializer list at the front

assert((l == std::list<int>{-1, 0, 1, 9, 9, 4, 5}));
```
