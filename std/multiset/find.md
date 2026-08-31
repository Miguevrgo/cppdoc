---
symbol: std::multiset::find
header: <set>
since: C++98
---

Finds an element with the key provided.

## Usage

```cpp
iterator find(const Key& key); (1)
const_iterator find(const Key& key) const; (2)
template<class K>
iterator find(const K& x); (3) [C++14]
template<class K>
const_iterator find(const K& x) const; (4) [C++14]
```

- 1, 2. Returns an iterator to an element with key equivalent to `key`, or `end()` if there is none. If several elements match, any one of them may be returned.
- 3, 4. Same as (1, 2), but `x` can be of any type the multiset's comparator accepts, so no `Key` has to be built for the lookup. Only available if the comparator is transparent, like `std::less<>`.

## Time complexity

Logarithmic in the size of the multiset.

## Examples

```cpp
#include <cassert>
#include <set>

std::multiset<int> numbers{1, 1, 5, 7};

auto it = numbers.find(1);
assert(*it == 1);
assert(numbers.find(9) == numbers.end());
```
