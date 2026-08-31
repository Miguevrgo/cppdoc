---
symbol: std::map::at
header: <map>
since: C++98
---

Accesses the value mapped to a key, with bounds checking.

## Usage

```cpp
T& at(const Key& key); (1)
const T& at(const Key& key) const; (2)
```

Returns a reference to the value mapped to `key`. Unlike `operator[]`, this never inserts an element: if no element with the given key exists, an exception is thrown.

## Exceptions

Throws `std::out_of_range` if the map does not have an element with the given key.

## Time complexity

O(log n)

## Examples

```cpp
#include <cassert>
#include <map>
#include <stdexcept>
#include <string>

std::map<std::string, int> ages{{"Alice", 30}};

assert(ages.at("Alice") == 30);

bool threw = false;
try {
    ages.at("Bob");
} catch (const std::out_of_range&) {
    threw = true;
}
assert(threw);
```
