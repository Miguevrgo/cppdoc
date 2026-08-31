---
symbol: std::unordered_set::cend
header: <unordered_set>
since: C++11
---

Returns a const iterator to one past the last element.

## Usage

```cpp
const_iterator cend() const; (1)
const_local_iterator cend(size_type n) const; (2)
```

- 1. The returned iterator acts as a placeholder and must not be dereferenced. It only ever compares equal to another end iterator. Always returns a `const_iterator`, even on a non-const unordered_set, unlike `end()`.
- 2. Returns an iterator to one past the last element of bucket `n`. `n` must be less than `bucket_count()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <unordered_set>

std::unordered_set<int> ids{10, 20, 30};

int count = 0;
for (auto it = ids.cbegin(); it != ids.cend(); ++it) count++;
assert(count == 3);
```
