---
symbol: std::multiset::insert
header: <set>
since: C++98
---

Inserts element(s) into the multiset.

## Usage

```cpp
iterator insert(const value_type& value); (1)
iterator insert(value_type&& value); (2) [C++11]
iterator insert(iterator pos, const value_type& value); (3) [C++98, until C++11]
iterator insert(const_iterator pos, const value_type& value); (3) [C++11]
iterator insert(const_iterator pos, value_type&& value); (4) [C++11]
template<class InputIt>
void insert(InputIt first, InputIt last); (5)
void insert(std::initializer_list<value_type> ilist); (6) [C++11]
iterator insert(node_type&& nh); (7) [C++17]
iterator insert(const_iterator pos, node_type&& nh); (8) [C++17]
```

`value_type` is `Key` itself, since a multiset has no separate mapped value. Unlike `set::insert`, a multiset allows equivalent keys, so insertion always succeeds; there is no bool to report failure, only a plain `iterator`. An element equal to an existing one is inserted after it.

- 1, 2. Inserts `value` by copying or moving it. Returns an iterator to the newly inserted element.
- 3, 4. Same as (1, 2), but `pos` is a hint as to where the search should start instead of always starting from the root.
- 5. Inserts copies of the elements in `[first, last)`.
- 6. Inserts copies of the elements of `ilist`, equivalent to `insert(ilist.begin(), ilist.end())`.
- 7. Moves the element owned by node handle `nh` into the multiset, without copying, moving or allocating anything. Returns an iterator to the inserted element, or `end()` if `nh` was empty.
- 8. Same as (7), but `pos` is used as a hint for where to start the search.

## Exceptions

For (1-6), if an exception is thrown the function has no effect.

## Time complexity

- (1, 2, 7) Logarithmic in the size of the multiset.
- (3, 4, 8) Amortized constant if the element is inserted right next to `pos`, logarithmic otherwise.
- (5, 6) O(N log(size() + N)), where N is the number of elements inserted.

## Examples

```cpp
#include <cassert>
#include <set>

std::multiset<int> s;

auto it1 = s.insert(5); // (1)
auto it2 = s.insert(5); // (1), duplicate, still inserted

assert(s.size() == 2);
assert(*it1 == 5 && *it2 == 5);
assert(s.count(5) == 2);
```

```cpp
#include <cassert>
#include <set>

std::multiset<int> a{1, 2};
std::multiset<int> b{2, 3, 4};

a.insert(b.begin(), b.end()); // (5)
a.insert({5, 5});             // (6)

assert(a.size() == 7);
assert(a.count(2) == 2);
```

```cpp
#include <cassert>
#include <set>

std::multiset<int> from{1, 1, 2};
std::multiset<int> to;

to.insert(from.extract(1)); // (7), splices one node without copying

assert(from.size() == 2);
assert(to.size() == 1);
```
