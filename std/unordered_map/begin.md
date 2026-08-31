---
symbol: std::unordered_map::begin
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

- 1, 2. Returns an iterator to the first element of the unordered_map. Elements are iterated in an unspecified order. If the unordered_map is empty, the returned iterator equals `end()`.
- 3, 4. Returns an iterator to the first element of bucket `n`. `n` must be less than `bucket_count()`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <string>
#include <unordered_map>

std::unordered_map<std::string, int> ages{{"Alice", 30}, {"Bob", 25}};

auto it = ages.begin();
assert(it != ages.end());
assert(it->second == 30 || it->second == 25);
```
