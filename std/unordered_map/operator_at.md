---
symbol: std::unordered_map::operator[]
header: <unordered_map>
since: C++11
---

Accesses or inserts the value mapped to a key.

## Usage

```cpp
T& operator[](const Key& key); (1)
T& operator[](Key&& key); (2)
```

Returns a reference to the value mapped to `key`, inserting a value-initialized `T` for that key first if it does not already exist. (2) moves `key` into the newly inserted element when an insertion happens, otherwise `key` is left unchanged.

Unlike `at()`, this never throws for a missing key, it inserts one instead.

## Time complexity

O(1) on average. Linear in the size of the unordered_map in the worst case.

## Examples

```cpp
#include <cassert>
#include <string>
#include <unordered_map>

std::unordered_map<std::string, int> ages;

ages["Alice"] = 30; // inserts {"Alice", 0}, then assigns 30
assert(ages["Alice"] == 30);
assert(ages["Bob"] == 0); // inserts {"Bob", 0}
assert(ages.size() == 2);
```
