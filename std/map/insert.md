---
symbol: std::map::insert
header: <map>
since: C++98
---

Inserts element(s) into the map, if the key does not already exist.

## Usage

```cpp
std::pair<iterator, bool> insert(const value_type& value); (1)
template<class P>
std::pair<iterator, bool> insert(P&& value); (2) [C++11]
std::pair<iterator, bool> insert(value_type&& value); (3) [C++17]
iterator insert(iterator pos, const value_type& value); (4) [C++98, until C++11]
iterator insert(const_iterator pos, const value_type& value); (4) [C++11]
template<class P>
iterator insert(const_iterator pos, P&& value); (5) [C++11]
iterator insert(const_iterator pos, value_type&& value); (6) [C++17]
template<class InputIt>
void insert(InputIt first, InputIt last); (7)
void insert(std::initializer_list<value_type> ilist); (8) [C++11]
insert_return_type insert(node_type&& nh); (9) [C++17]
iterator insert(const_iterator pos, node_type&& nh); (10) [C++17]
```

If a key equivalent to the one being inserted is already in the map, nothing is inserted.

- 1-3. Inserts `value`, copying it, forwarding it through `emplace`, or moving it. Returns an iterator to the inserted element or to the one already holding that key, and a bool that is `true` only if the insertion happened.
- 4-6. Same as (1-3), but `pos` is a hint of where the search starts instead of always starting from the root. Only the iterator is returned.
- 7, 8. Inserts copies of the elements in `[first, last)` or of `ilist`. If several of them have equivalent keys, which one ends up in the map is unspecified.
- 9, 10. Moves the element owned by the node handle `nh` into the map, without copying, moving or allocating anything, and does nothing if `nh` is empty. (9) returns an `insert_return_type`, which gives the element back in its `node` member when the key was already taken.

## Exceptions

For (1-6), if an exception is thrown the function has no effect.

## Time complexity

- (1-3, 9) Logarithmic in the size of the map.
- (4-6, 10) Amortized constant if the element is inserted right next to `pos`, logarithmic otherwise.
- (7, 8) O(N log(size() + N)), where N is the number of elements inserted.

## Examples

```cpp
#include <cassert>
#include <map>
#include <string>

std::map<std::string, int> ages;

auto [it1, ok1] = ages.insert({"Alice", 30}); // (1) inserted
auto [it2, ok2] = ages.insert({"Alice", 99}); // key already there, ignored

assert(ok1 && !ok2);
assert(it1 == it2);
assert(ages["Alice"] == 30);
```

```cpp
#include <cassert>
#include <map>

std::map<int, int> squares{{1, 1}, {2, 4}};
std::map<int, int> more{{3, 9}, {4, 16}};

squares.insert(more.begin(), more.end()); // (7)
squares.insert({{5, 25}, {6, 36}});       // (8)

assert(squares.size() == 6);
```

```cpp
#include <cassert>
#include <map>
#include <string>

std::map<int, std::string> from{{1, "one"}, {2, "two"}};
std::map<int, std::string> to;

to.insert(from.extract(1)); // (9) splices the node, the string is never copied

assert(from.size() == 1);
assert(to[1] == "one");
```
