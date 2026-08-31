---
symbol: std::deque::insert
header: <deque>
since: C++98
---

Inserts element(s) before `pos`.

## Usage

```cpp
iterator insert(const_iterator pos, const T& value); (1)
iterator insert(const_iterator pos, T&& value); (2) [C++11]
iterator insert(const_iterator pos, size_type count, const T& value); (3)
template<class InputIt>
iterator insert(const_iterator pos, InputIt first, InputIt last); (4)
iterator insert(const_iterator pos, std::initializer_list<T> ilist); (5) [C++11]
```

1. Inserts a copy of `value` before `pos`.
2. Inserts `value` before `pos`, using move semantics if possible.
3. Inserts `count` copies of `value` before `pos`.
4. Inserts elements from range `[first, last)` before `pos`.
5. Inserts elements from initializer list `ilist` before `pos`.

If `pos` is `begin()` or `end()`, all iterators to the deque are invalidated, but references and pointers to existing elements remain valid. Otherwise, all iterators, references and pointers are invalidated.

## Exceptions

If an exception is thrown other than by the constructors, the assignment operators or any InputIt operation this function has no effect.

## Time complexity

Linear in the number of elements inserted plus the distance between `pos` and the nearer of `begin()` or `end()`.

## Examples

```cpp
#include <cassert>
#include <deque>
#include <string>
#include <utility>

std::deque<std::string> values{"a", "c"};
std::string s = "b";

values.insert(values.begin() + 1, s);            // (1) copies s before position 1
values.insert(values.begin() + 2, std::move(s)); // (2) moves s before position 2

assert((values == std::deque<std::string>{"a", "b", "b", "c"}));
assert(s.empty());
```

```cpp
#include <cassert>
#include <deque>

std::deque<int> values{1, 5};
std::deque<int> extra{2, 3, 4};

values.insert(values.begin() + 1, 2, 9);              // (3) two 9s
values.insert(values.begin() + 3, extra.begin(), extra.end()); // (4) copies the range in
values.insert(values.end(), {6, 7});                  // (5) initializer list at the end

assert((values == std::deque<int>{1, 9, 9, 2, 3, 4, 5, 6, 7}));
```
