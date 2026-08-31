---
symbol: std::multiset::erase
header: <set>
since: C++98
---

Removes specified elements from the multiset.

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

- 1, 2. Removes the element at `pos`. `pos` must be a valid, dereferenceable iterator into the multiset.
- 3. Removes the elements in the range `[first, last)`.
- 4. Removes all elements with a key equivalent to `key`. Returns the number of elements removed, which for multiset can be more than one.
- 5. Removes all elements with a key that compares equivalent to `x`. Only available if the comparator is transparent, like `std::less<>`, and if `K` does not implicitly convert to `iterator` or `const_iterator`, which would make (5) ambiguous with (1, 2).

## Time complexity

- (1, 2) Amortized O(1)
- (3) O(log(multiset.size()) + std::distance(first, last))
- (4) O(log(multiset.size()) + multiset.count(key))
- (5) O(log(multiset.size()) + multiset.count(x))

## Examples

```cpp
#include <cassert>
#include <set>

std::multiset<int> s{1, 1, 3};

s.erase(s.begin()); // (1), removes just one element

assert(s.size() == 2);
```

```cpp
#include <cassert>
#include <set>

std::multiset<int> s{1, 1, 3};

assert(s.erase(1) == 2); // (4), removes all elements equal to 1
assert(s.size() == 1);
```
