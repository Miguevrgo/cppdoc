---
symbol: std::unordered_map::insert
header: <unordered_map>
since: C++11
---

Inserts element(s) into the unordered_map, if the key does not already exist.

## Usage

```cpp
std::pair<iterator, bool> insert(const value_type& value); (1)
template<class P>
std::pair<iterator, bool> insert(P&& value); (2)
std::pair<iterator, bool> insert(value_type&& value); (3) [C++17]
iterator insert(const_iterator hint, const value_type& value); (4)
template<class P>
iterator insert(const_iterator hint, P&& value); (5)
iterator insert(const_iterator hint, value_type&& value); (6) [C++17]
template<class InputIt>
void insert(InputIt first, InputIt last); (7)
void insert(std::initializer_list<value_type> ilist); (8)
insert_return_type insert(node_type&& nh); (9) [C++17]
iterator insert(const_iterator hint, node_type&& nh); (10) [C++17]
```

If a key equivalent to the one being inserted is already present, nothing is inserted.

- 1-3. Inserts `value`, copying it, forwarding it through `emplace`, or moving it. Returns an iterator to the inserted element or to the one already holding that key, and a bool that is `true` only if the insertion happened.
- 4-6. Same as (1-3), but `hint` is a hint as to where the search should start; it does not affect correctness.
- 7, 8. Inserts copies of the elements in `[first, last)` or of `ilist`. If several of them have equivalent keys, which one ends up in the unordered_map is unspecified.
- 9, 10. Moves the element owned by the node handle `nh` into the unordered_map, without copying, moving or allocating anything, and does nothing if `nh` is empty. (9) returns an `insert_return_type`, which gives the element back through its `node` member when the key was already taken.

## Exceptions

For (1-6), if an exception is thrown the function has no effect.

## Time complexity

O(1) per element inserted on average. Linear in the size of the unordered_map per element in the worst case (e.g. when a rehash is triggered).

## Examples

```cpp
#include <cassert>
#include <string>
#include <unordered_map>

std::unordered_map<std::string, int> ages;

auto [it1, ok1] = ages.insert({"Alice", 30}); // (1) inserted
auto [it2, ok2] = ages.insert({"Alice", 99}); // key already there, ignored

assert(ok1 && !ok2);
assert(it1 == it2);
assert(ages["Alice"] == 30);
```

```cpp
#include <cassert>
#include <unordered_map>

std::unordered_map<int, int> squares{{1, 1}, {2, 4}};
std::unordered_map<int, int> more{{3, 9}, {4, 16}};

squares.insert(more.begin(), more.end()); // (7)
squares.insert({{5, 25}, {6, 36}});       // (8)

assert(squares.size() == 6);
```
