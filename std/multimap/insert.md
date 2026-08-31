---
symbol: std::multimap::insert
header: <map>
since: C++98
---

Inserts element(s) into the multimap.

## Usage

```cpp
iterator insert(const value_type& value); (1)
template<class P>
iterator insert(P&& value); (2) [C++11]
iterator insert(value_type&& value); (3) [C++17]
iterator insert(iterator pos, const value_type& value); (4) [C++98, until C++11]
iterator insert(const_iterator pos, const value_type& value); (4) [C++11]
template<class P>
iterator insert(const_iterator pos, P&& value); (5) [C++11]
iterator insert(const_iterator pos, value_type&& value); (6) [C++17]
template<class InputIt>
void insert(InputIt first, InputIt last); (7)
void insert(std::initializer_list<value_type> ilist); (8) [C++11]
iterator insert(node_type&& nh); (9) [C++17]
iterator insert(const_iterator pos, node_type&& nh); (10) [C++17]
```

Unlike `map::insert`, a multimap allows duplicate keys, so insertion always succeeds; there is no bool to report failure, only a plain `iterator`. An element with an equivalent key already present is inserted after the existing ones.

- 1-3. Inserts `value`, copying it, forwarding it through `emplace`, or moving it. Returns an iterator to the newly inserted element.
- 4-6. Same as (1-3), but `pos` is a hint of where the search starts instead of always starting from the root.
- 7, 8. Inserts copies of the elements in `[first, last)` or of `ilist`.
- 9, 10. Moves the element owned by the node handle `nh` into the multimap, without copying, moving or allocating anything. Returns an iterator to the inserted element, or `end()` if `nh` was empty.

## Exceptions

For (1-6), if an exception is thrown the function has no effect.

## Time complexity

- (1-3, 9) Logarithmic in the size of the multimap.
- (4-6, 10) Amortized constant if the element is inserted right next to `pos`, logarithmic otherwise.
- (7, 8) O(N log(size() + N)), where N is the number of elements inserted.

## Examples

```cpp
#include <cassert>
#include <map>
#include <string>

std::multimap<std::string, int> ages;

auto it1 = ages.insert({"Alice", 30}); // (1)
auto it2 = ages.insert({"Alice", 40}); // (1), duplicate key, still inserted

assert(ages.size() == 2);
assert(it1->second == 30);
assert(it2->second == 40);
assert(ages.count("Alice") == 2);
```

```cpp
#include <cassert>
#include <map>

std::multimap<int, int> a{{1, 1}, {2, 4}};
std::multimap<int, int> b{{1, 100}, {3, 9}};

a.insert(b.begin(), b.end()); // (7)
a.insert({{4, 16}, {4, 17}}); // (8)

assert(a.size() == 6);
assert(a.count(1) == 2);
assert(a.count(4) == 2);
```

```cpp
#include <cassert>
#include <map>
#include <string>

std::multimap<int, std::string> from{{1, "one"}, {1, "uno"}};
std::multimap<int, std::string> to;

to.insert(from.extract(1)); // (9), splices one node without copying

assert(from.size() == 1);
assert(to.size() == 1);
```
