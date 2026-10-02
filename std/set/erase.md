---
symbol: std::set::erase
header: <set>
since: C++98
---

Removes specified elements from the set.

## Usage

```cpp
iterator erase(iterator pos); (1) [C++11]
iterator erase(const_iterator pos); (2) [C++11]
iterator erase(const_iterator first, const_iterator last); (3) [C++11]
size_type erase(const Key& key); (4)
template<class K>
size_type erase(K&& x); (5) [C++23]
```

1, 2. Removes the element at `pos`.
3. Removes the elements in the range `[first, last)`.
4. Removes the element (if it exists) with key equivalent to `key`. Returns the number of elements removed (0 or 1).
5. Removes elements with key equivalent to `x` using transparent lookup.

## Time complexity

- 1, 2: Amortized constant O(1).
- 3: Logarithmic in size of set plus linear in distance: O(log N + distance(first, last)).
- 4, 5: Logarithmic in size of set: O(log N).

## Examples

```cpp
#include <cassert>
#include <set>

std::set<int> s{1, 2, 3, 4, 5};

s.erase(1);
assert(!s.contains(1));

auto it = s.find(3);
s.erase(it);
assert(!s.contains(3));

assert(s.size() == 3);
```
