---
symbol: std::set::erase
header: <set>
since: C++98
---

Removes specified elements from the set.

## Usage

```cpp
void erase(iterator pos); (1) [C++98, until C++11]
iterator erase(iterator pos); (1) [C++11]
iterator erase(const_iterator pos); (2) [C++11]
void erase(iterator first, iterator last); (3) [C++98, until C++11]
iterator erase(const_iterator first, const_iterator last); (3) [C++11]
size_type erase(const Key& key); (4)
template<class K>
size_type erase(K&& x); (5) [C++23]
```

- 1, 2. Removes the element at `pos`. `pos` must be a valid, dereferenceable iterator into the set.
- 3. Removes the elements in the range `[first, last)`.
- 4. Removes the element (if it exists) with a key equivalent to `key`.
- 5. Removes the element (if it exists) with a key that compares equivalent to `x`. Only available if the comparator is transparent, like `std::less<>`, and if `K` does not implicitly convert to `iterator` or `const_iterator`, which would make (5) ambiguous with (1, 2).

## Time complexity

- (1, 2) Amortized O(1)
- (3) O(log(set.size()) + std::distance(first, last))
- (4) O(log(set.size()) + set.count(key))
- (5) O(log(set.size()) + set.count(x))

## Examples

```cpp
#include <cassert>
#include <set>

std::set<int> s{1, 3, 5, 7};

s.erase(s.begin());
assert((s == std::set<int>{3, 5, 7}));

assert(s.erase(5) == 1);
assert(s.erase(99) == 0);
assert((s == std::set<int>{3, 7}));
```
