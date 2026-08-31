---
symbol: std::unordered_set::begin
header: <unordered_set>
since: C++11
---

Returns an iterator to the first element.

## Usage

```cpp
iterator begin(); (1)
const_iterator begin() const; (2)
local_iterator begin(size_type n); (3)
const_local_iterator begin(size_type n) const; (4)
```

- 1, 2. Returns an iterator to the first element of the unordered_set. Elements are iterated in an unspecified order. If the unordered_set is empty, the returned iterator equals `end()`.
- 3, 4. Returns an iterator to the first element of bucket `n`. `n` must be less than `bucket_count()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <unordered_set>

std::unordered_set<int> ids{10, 20, 30};

auto it = ids.begin();
assert(it != ids.end());
assert(ids.contains(*it));
```
