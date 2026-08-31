---
symbol: std::unordered_multiset::erase
header: <unordered_set>
since: C++11
---

Removes specified elements from the unordered_multiset.

## Usage

```cpp
iterator erase(iterator pos); (1)
iterator erase(const_iterator pos); (2)
iterator erase(const_iterator first, const_iterator last); (3)
size_type erase(const Key& key); (4)
template<class K>
size_type erase(K&& x); (5) [C++23]
```

- 1, 2. Removes the element at `pos`, which must be a valid, dereferenceable iterator into the unordered_multiset. Returns an iterator to the element following the erased one.
- 3. Removes the elements in the range `[first, last)`. Returns `last`.
- 4. Removes all elements with a key equivalent to `key`. Returns the number of elements removed.
- 5. Removes all elements with a key that compares equivalent to `x`. Only available if the hash and equality predicate are transparent, and if `K` does not implicitly convert to `iterator` or `const_iterator`, which would make (5) ambiguous with (1, 2).

## Time complexity

O(1) on average per erased element. Linear in the size of the unordered_multiset in the worst case.

## Examples

```cpp
#include <cassert>
#include <unordered_set>

std::unordered_multiset<int> ids{10, 10, 20};

assert(ids.erase(10) == 2);
assert(ids.erase(99) == 0);
assert(ids.size() == 1);
assert(!ids.contains(10));
```
