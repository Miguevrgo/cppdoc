---
symbol: std::unordered_multiset::insert
header: <unordered_set>
since: C++11
---

Inserts element(s) into the unordered_multiset.

## Usage

```cpp
iterator insert(const value_type& value); (1)
iterator insert(value_type&& value); (2)
iterator insert(const_iterator hint, const value_type& value); (3)
iterator insert(const_iterator hint, value_type&& value); (4)
template<class InputIt>
void insert(InputIt first, InputIt last); (5)
void insert(std::initializer_list<value_type> ilist); (6)
iterator insert(node_type&& nh); (7) [C++17]
iterator insert(const_iterator hint, node_type&& nh); (8) [C++17]
```

`value_type` is `Key` itself, since a set has no separate mapped value. Unlike `unordered_set::insert`, this always inserts, since equivalent keys are allowed.

- 1, 2. Inserts `value` by copying or moving it. Returns an iterator to the newly inserted element.
- 3, 4. Same as (1, 2), but `hint` is a hint as to where the search should start; it does not affect correctness.
- 5. Inserts copies of the elements in `[first, last)`.
- 6. Inserts copies of the elements of `ilist`, equivalent to `insert(ilist.begin(), ilist.end())`.
- 7. Moves the element owned by node handle `nh` into the unordered_multiset, without copying, moving or allocating anything. Returns an iterator to the newly inserted element, or `end()` if `nh` is empty.
- 8. Same as (7), but `hint` is used as a hint for where to start the search.

## Exceptions

For (1-4), if an exception is thrown the function has no effect.

## Time complexity

O(1) per element inserted on average. Linear in the size of the unordered_multiset per element in the worst case (e.g. when a rehash is triggered).

## Examples

```cpp
#include <cassert>
#include <unordered_set>

std::unordered_multiset<int> s;

s.insert(5); // (1)
s.insert(5); // duplicate, still inserted

assert(s.size() == 2);
assert(s.count(5) == 2);
```

```cpp
#include <cassert>
#include <unordered_set>

std::unordered_multiset<int> a{1, 2};
std::unordered_multiset<int> b{2, 3, 4};

a.insert(b.begin(), b.end()); // (5)
a.insert({5, 5});             // (6)

assert(a.size() == 7);
assert(a.count(2) == 2);
assert(a.count(5) == 2);
```
