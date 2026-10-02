---
symbol: std::set::insert
header: <set>
since: C++98
---

Inserts elements into the set.

## Usage

```cpp
std::pair<iterator, bool> insert(const value_type& value); (1)
std::pair<iterator, bool> insert(value_type&& value); (2) [C++11]
iterator insert(const_iterator hint, const value_type& value); (3)
template<class InputIt>
void insert(InputIt first, InputIt last); (4)
void insert(std::initializer_list<value_type> ilist); (5) [C++11]
```

1, 2. Inserts `value` if it does not already exist. Returns a pair with an iterator pointing to the element and a `bool` indicating whether insertion took place (`true` if inserted, `false` if key was already present).
3. Inserts `value` using `hint` as a suggestion where to begin search.
4, 5. Inserts elements from range `[first, last)` or `ilist`.

## Time complexity

- 1, 2: Logarithmic in size of set: O(log N).
- 3: Amortized constant O(1) if inserted right next to `hint`, otherwise O(log N).
- 4, 5: O(N * log(size + N)).

## Examples

```cpp
#include <cassert>
#include <set>

std::set<int> s{1, 2, 3};

auto [it1, inserted1] = s.insert(4);
assert(inserted1 && *it1 == 4);

auto [it2, inserted2] = s.insert(2);
assert(!inserted2 && *it2 == 2);
```
