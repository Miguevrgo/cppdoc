---
symbol: std::map::erase
header: <map>
since: C++98
---

Removes specified elements in the map.

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

- 1-2. Removes the element at `pos`.
- 3. Removes the elements in the range `[first, last)`.
- 4. Removes the element (if exists) with the key equivalent to `key`.
- 5. Removes all elements with key that compares equivalent to `x`. Only available if the comparator is transparent, like `std::less<>`, and if `K` does not implicitly convert to `iterator` or `const_iterator`, which would make (5) hide (1) and (2).

## Time complexity

- 1-2 Amortized O(1)
- 3 log(map.size()) + std::distance(first, last)
- 4 log(map.size()) + map.count(key)
- 5 log(map.size()) + map.count(x)

## Examples

```cpp
#include <cassert>
#include <map>

std::map<int, int> numbers{{1, 2}, {3, 4}, {5, 6}, {7, 8}};

numbers.erase(numbers.begin());
assert((numbers == std::map<int, int>{{3, 4}, {5, 6}, {7, 8}}));
```
