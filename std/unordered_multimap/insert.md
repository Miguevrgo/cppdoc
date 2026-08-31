---
symbol: std::unordered_multimap::insert
header: <unordered_map>
since: C++11
---

Inserts element(s) into the unordered_multimap.

## Usage

```cpp
iterator insert(const value_type& value); (1)
template<class P>
iterator insert(P&& value); (2)
iterator insert(value_type&& value); (3) [C++17]
iterator insert(const_iterator hint, const value_type& value); (4)
template<class P>
iterator insert(const_iterator hint, P&& value); (5)
iterator insert(const_iterator hint, value_type&& value); (6) [C++17]
template<class InputIt>
void insert(InputIt first, InputIt last); (7)
void insert(std::initializer_list<value_type> ilist); (8)
iterator insert(node_type&& nh); (9) [C++17]
iterator insert(const_iterator hint, node_type&& nh); (10) [C++17]
```

Unlike `unordered_map::insert`, this always inserts, since duplicate keys are allowed.

- 1-3. Inserts `value`, copying it, forwarding it through `emplace`, or moving it. Returns an iterator to the newly inserted element.
- 4-6. Same as (1-3), but `hint` is a hint as to where the search should start; it does not affect correctness.
- 7, 8. Inserts copies of the elements in `[first, last)` or of `ilist`.
- 9, 10. Moves the element owned by the node handle `nh` into the unordered_multimap, without copying, moving or allocating anything. Returns an iterator to the newly inserted element, or `end()` if `nh` is empty.

## Exceptions

For (1-6), if an exception is thrown the function has no effect.

## Time complexity

O(1) per element inserted on average. Linear in the size of the unordered_multimap per element in the worst case (e.g. when a rehash is triggered).

## Examples

```cpp
#include <cassert>
#include <string>
#include <unordered_map>

std::unordered_multimap<std::string, int> scores;

scores.insert({"Alice", 10}); // (1)
scores.insert({"Alice", 20}); // duplicate key, still inserted

assert(scores.size() == 2);
assert(scores.count("Alice") == 2);
```

```cpp
#include <cassert>
#include <unordered_map>

std::unordered_multimap<int, int> a{{1, 1}, {2, 4}};
std::unordered_multimap<int, int> b{{2, 40}, {3, 9}};

a.insert(b.begin(), b.end()); // (7)
a.insert({{4, 16}, {4, 17}}); // (8)

assert(a.size() == 6);
assert(a.count(2) == 2);
assert(a.count(4) == 2);
```
