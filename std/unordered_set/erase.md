---
symbol: std::unordered_set::erase
header: <unordered_set>
since: C++11
---

Removes specified elements from the unordered_set.

## Usage

```cpp
iterator erase(iterator pos); (1)
iterator erase(const_iterator pos); (2)
iterator erase(const_iterator first, const_iterator last); (3)
size_type erase(const Key& key); (4)
template<class K>
size_type erase(K&& x); (5) [C++23]
```

- 1, 2. Removes the element at `pos`, which must be a valid, dereferenceable iterator into the unordered_set. Returns an iterator to the element following the erased one.
- 3. Removes the elements in the range `[first, last)`. Returns `last`.
- 4. Removes the element (if it exists) with a key equivalent to `key`. Returns the number of elements removed (0 or 1).
- 5. Removes the element (if it exists) with a key that compares equivalent to `x`. Only available if the hash and equality predicate are transparent, and if `K` does not implicitly convert to `iterator` or `const_iterator`, which would make (5) ambiguous with (1, 2).

## Time complexity

O(1) on average per erased element. Linear in the size of the unordered_set in the worst case.

## Examples

```cpp
#include <cassert>
#include <unordered_set>

std::unordered_set<int> ids{10, 20, 30};

assert(ids.erase(20) == 1);
assert(ids.erase(99) == 0);
assert(ids.size() == 2);
assert(!ids.contains(20));
```
