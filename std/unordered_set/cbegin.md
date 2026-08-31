---
symbol: std::unordered_set::cbegin
header: <unordered_set>
since: C++11
---

Returns a const iterator to the first element.

## Usage

```cpp
const_iterator cbegin() const; (1)
const_local_iterator cbegin(size_type n) const; (2)
```

- 1. Returns an iterator to the first element of the unordered_set. Elements are iterated in an unspecified order. If the unordered_set is empty, the returned iterator equals `cend()`. Always returns a `const_iterator`, even on a non-const unordered_set, unlike `begin()`.
- 2. Returns an iterator to the first element of bucket `n`. `n` must be less than `bucket_count()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <unordered_set>

std::unordered_set<int> ids{10, 20, 30};

auto it = ids.cbegin();
assert(it != ids.cend());
```
