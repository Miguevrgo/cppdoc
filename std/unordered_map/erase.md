---
symbol: std::unordered_map::erase
header: <unordered_map>
since: C++11
---

Removes specified elements from the unordered_map.

## Usage

```cpp
iterator erase(iterator pos); (1)
iterator erase(const_iterator pos); (2)
iterator erase(const_iterator first, const_iterator last); (3)
size_type erase(const Key& key); (4)
template<class K>
size_type erase(K&& x); (5) [C++23]
```

- 1, 2. Removes the element at `pos`, which must be a valid, dereferenceable iterator into the unordered_map. Returns an iterator to the element following the erased one.
- 3. Removes the elements in the range `[first, last)`. Returns `last`.
- 4. Removes the element (if it exists) with a key equivalent to `key`. Returns the number of elements removed (0 or 1).
- 5. Removes the element (if it exists) with a key that compares equivalent to `x`. Only available if the hash and equality predicate are transparent, and if `K` does not implicitly convert to `iterator` or `const_iterator`, which would make (5) ambiguous with (1, 2).

## Time complexity

O(1) on average per erased element. Linear in the size of the unordered_map in the worst case.

## Examples

```cpp
#include <cassert>
#include <unordered_map>

std::unordered_map<int, int> numbers{{1, 2}, {3, 4}, {5, 6}};

assert(numbers.erase(3) == 1);
assert(numbers.erase(99) == 0);
assert(numbers.size() == 2);
assert(!numbers.contains(3));
```
