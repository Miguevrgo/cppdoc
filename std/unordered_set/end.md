---
symbol: std::unordered_set::end
header: <unordered_set>
since: C++11
---

Returns an iterator to one past the last element.

## Usage

```cpp
iterator end(); (1)
const_iterator end() const; (2)
local_iterator end(size_type n); (3)
const_local_iterator end(size_type n) const; (4)
```

- 1, 2. The returned iterator acts as a placeholder and must not be dereferenced. It only ever compares equal to another end iterator.
- 3, 4. Returns an iterator to one past the last element of bucket `n`. `n` must be less than `bucket_count()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <unordered_set>

std::unordered_set<int> ids{10, 20, 30};

assert(ids.find(99) == ids.end());

int count = 0;
for (auto it = ids.begin(); it != ids.end(); ++it) count++;
assert(count == 3);
```
