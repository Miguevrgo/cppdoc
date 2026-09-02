---
symbol: std::distance
header: <iterator>
since: C++98
---

Returns the number of elements between two iterators.

## Usage

```cpp
template <class InputIt>
typename std::iterator_traits<InputIt>::difference_type
    distance(InputIt first, InputIt last);
```

Calculates the number of hops from `first` to `last`. Where `last` must be reachable from `first`.

## Time complexity

- **O(1)** if `InputIt` meets `RandomAccessIterator` requirements.
- **O(N)** for non-random access iterators (increments `first` step by step until `last`).

## Examples

```cpp
#include <cassert>
#include <iterator>
#include <list>
#include <vector>

std::vector<int> v{1, 2, 3, 4, 5};
assert(std::distance(v.begin(), v.end()) == 5);

std::list<int> l{10, 20, 30};
assert(std::distance(l.begin(), l.end()) == 3);
```
