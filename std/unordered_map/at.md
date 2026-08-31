---
symbol: std::unordered_map::at
header: <unordered_map>
since: C++11
---

Accesses the value mapped to a key, with bounds checking.

## Usage

```cpp
T& at(const Key& key); (1)
const T& at(const Key& key) const; (2)
```

Returns a reference to the value mapped to `key`. Unlike `operator[]`, this never inserts an element: if no element with the given key exists, an exception is thrown.

## Exceptions

Throws `std::out_of_range` if the unordered_map does not have an element with the given key.

## Time complexity

O(1) on average. Linear in the size of the unordered_map in the worst case.

## Examples

```cpp
#include <cassert>
#include <stdexcept>
#include <string>
#include <unordered_map>

std::unordered_map<std::string, int> ages{{"Alice", 30}};

assert(ages.at("Alice") == 30);

bool threw = false;
try {
    ages.at("Bob");
} catch (const std::out_of_range&) {
    threw = true;
}
assert(threw);
```
