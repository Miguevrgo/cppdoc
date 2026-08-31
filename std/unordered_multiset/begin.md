---
symbol: std::unordered_multiset::begin
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

- 1, 2. Returns an iterator to the first element of the unordered_multiset. Equivalent elements are adjacent, but the order between different keys is unspecified. If the unordered_multiset is empty, the returned iterator equals `end()`.
- 3, 4. Returns an iterator to the first element of bucket `n`. `n` must be less than `bucket_count()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <unordered_set>

std::unordered_multiset<int> ids{10, 10, 20};

auto it = ids.begin();
assert(it != ids.end());
assert(ids.contains(*it));
```
