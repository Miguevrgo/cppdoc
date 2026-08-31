---
symbol: std::multimap::erase
header: <map>
since: C++98
---

Removes specified elements from the multimap.

## Usage

```cpp
iterator erase(const_iterator pos); (1)
size_type erase(const Key& key); (2)
```

1. Removes the element at `pos`, returning an iterator to the next element.
2. Removes all elements with a key equivalent to `key`. Returns the count removed, which can exceed one. Range-erase and transparent-key overloads also exist.

## Time complexity

Amortized O(1) for (1); O(log(size()) + count(key)) for (2).

## Examples

```cpp
#include <cassert>
#include <map>

std::multimap<int, int> numbers{{1, 10}, {1, 20}, {3, 30}};
numbers.erase(numbers.begin()); // (1), removes just one element
assert(numbers.size() == 2);

assert(numbers.erase(1) == 1); // (2), removes the remaining key-1 element
```
