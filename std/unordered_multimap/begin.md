---
symbol: std::unordered_multimap::begin
header: <unordered_map>
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

- 1, 2. Returns an iterator to the first element of the unordered_multimap. Elements with equivalent keys are adjacent, but the order between different keys is unspecified. If the unordered_multimap is empty, the returned iterator equals `end()`.
- 3, 4. Returns an iterator to the first element of bucket `n`. `n` must be less than `bucket_count()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>
#include <unordered_map>

std::unordered_multimap<std::string, int> scores{{"Alice", 10}, {"Alice", 20}};

auto it = scores.begin();
assert(it != scores.end());
assert(it->first == "Alice");
```
