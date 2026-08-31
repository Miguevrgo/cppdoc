---
symbol: std::forward_list::insert_after
header: <forward_list>
since: C++11
---

Inserts elements immediately after the specified position in the list.

## Usage

```cpp
iterator insert_after(const_iterator pos, const T& value);                  (1)
iterator insert_after(const_iterator pos, T&& value);                       (2)
iterator insert_after(const_iterator pos, size_type count, const T& value); (3)
template<class InputIt>
iterator insert_after(const_iterator pos, InputIt first, InputIt last);     (4)
iterator insert_after(const_iterator pos, std::initializer_list<T> ilist);  (5)
```

1. Inserts a copy of `value` right after `pos`.
2. Inserts `value` right after `pos`, using move semantics.
3. Inserts `count` copies of `value` right after `pos`.
4. Inserts copies of the elements in range `[first, last)` right after `pos`, in order.
5. Inserts the elements of `ilist` right after `pos`, in order.

`pos` must be a valid dereferenceable iterator or `before_begin()`/`cbefore_begin()`. Unlike `std::list::insert`, which takes the position elements are inserted *before*, every overload here returns an iterator to the **last** element inserted, or `pos` if no element was inserted — so the result can be fed straight back in to keep inserting further down the list. No existing iterators or references are invalidated.

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
#include <forward_list>
#include <string>

std::forward_list<std::string> fl{"a", "c"};

fl.insert_after(fl.begin(), "b"); // (1) right after "a"

assert((fl == std::forward_list<std::string>{"a", "b", "c"}));
```

```cpp
#include <cassert>
#include <forward_list>

std::forward_list<int> fl{1, 8};
std::forward_list<int> extra{4, 5};

auto it = fl.begin();                                  // points to 1
it = fl.insert_after(it, 2, 9);                         // (3): 1,9,9,8
it = fl.insert_after(it, extra.begin(), extra.end());   // (4): 1,9,9,4,5,8
it = fl.insert_after(it, {6, 7});                       // (5): 1,9,9,4,5,6,7,8

assert((fl == std::forward_list<int>{1, 9, 9, 4, 5, 6, 7, 8}));
```
