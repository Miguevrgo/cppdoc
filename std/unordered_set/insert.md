---
symbol: std::unordered_set::insert
header: <unordered_set>
since: C++11
---

Inserts element(s) into the unordered_set, if an equivalent key does not already exist.

## Usage

```cpp
std::pair<iterator, bool> insert(const value_type& value); (1)
std::pair<iterator, bool> insert(value_type&& value); (2)
iterator insert(const_iterator hint, const value_type& value); (3)
iterator insert(const_iterator hint, value_type&& value); (4)
template<class InputIt>
void insert(InputIt first, InputIt last); (5)
void insert(std::initializer_list<value_type> ilist); (6)
insert_return_type insert(node_type&& nh); (7) [C++17]
iterator insert(const_iterator hint, node_type&& nh); (8) [C++17]
```

`value_type` is `Key` itself, since a set has no separate mapped value. If an element with an equivalent key is already present, nothing is inserted and the existing element is left untouched.

- 1, 2. Inserts `value` by copying or moving it. Returns an iterator to the inserted element, or to the existing one with the equivalent key, and a bool that is `true` only if the insertion happened.
- 3, 4. Same as (1, 2), but `hint` is a hint as to where the search should start; it does not affect correctness.
- 5. Inserts copies of the elements in `[first, last)`. If several of them have equivalent keys, which one ends up in the unordered_set is unspecified.
- 6. Inserts copies of the elements of `ilist`, equivalent to `insert(ilist.begin(), ilist.end())`.
- 7. Moves the element owned by node handle `nh` into the unordered_set, without copying, moving or allocating anything, and does nothing if `nh` is empty. Returns an `insert_return_type`, which gives `nh` back through its `node` member if an equivalent key was already present.
- 8. Same as (7), but `hint` is used as a hint for where to start the search.

## Exceptions

For (1-4), if an exception is thrown the function has no effect.

## Time complexity

O(1) per element inserted on average. Linear in the size of the unordered_set per element in the worst case (e.g. when a rehash is triggered).

## Examples

```cpp
#include <cassert>
#include <unordered_set>

std::unordered_set<int> s;

auto [it1, ok1] = s.insert(5); // inserted
auto [it2, ok2] = s.insert(5); // key already there, ignored

assert(ok1 && !ok2);
assert(it1 == it2);
assert(s.size() == 1);
```

```cpp
#include <cassert>
#include <unordered_set>

std::unordered_set<int> a{1, 2};
std::unordered_set<int> b{2, 3, 4};

a.insert(b.begin(), b.end()); // (5)
a.insert({5, 6});             // (6)

assert(a.size() == 6);
```
