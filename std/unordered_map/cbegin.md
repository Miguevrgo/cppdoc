---
symbol: std::unordered_map::cbegin
header: <unordered_map>
since: C++11
---

Returns a const iterator to the first element.

## Usage

```cpp
const_iterator cbegin() const; (1)
const_local_iterator cbegin(size_type n) const; (2)
```

- 1. Returns an iterator to the first element of the unordered_map. Elements are iterated in an unspecified order. If the unordered_map is empty, the returned iterator equals `cend()`. Always returns a `const_iterator`, even on a non-const unordered_map, unlike `begin()`.
- 2. Returns an iterator to the first element of bucket `n`. `n` must be less than `bucket_count()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>
#include <unordered_map>

std::unordered_map<std::string, int> ages{{"Alice", 30}, {"Bob", 25}};

auto it = ages.cbegin();
assert(it != ages.cend());
```
