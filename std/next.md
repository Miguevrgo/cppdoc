---
symbol: std::next
header: <iterator>
since: C++11
---

Returns the `n`-th successor of an iterator.

## Usage

```cpp
template<class InputIt>
constexpr InputIt next(InputIt it,
                       typename iterator_traits<InputIt>::difference_type n = 1); (1)
```

Advances `it` by `n` positions without modifying the original iterator `it`. Or `-n` positions if its negative

## Time complexity

- **O(1)** for `RandomAccessIterator`.
- **O(n)** for non-random access iterators.

## Examples

```cpp
#include <cassert>
#include <iterator>
#include <list>
#include <vector>

std::vector<int> v{10, 20, 30, 40};
auto it_v = std::next(v.begin(), 2);
assert(*it_v == 30);

std::list<int> l{1, 2, 3};
auto it_l = std::next(l.begin());
assert(*it_l == 2);
```
