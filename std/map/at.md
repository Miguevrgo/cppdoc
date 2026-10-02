---
symbol: std::map::at
header: <map>
since: C++11
---

Accesses specified element with bounds checking.

## Usage

```cpp
T& at(const Key& key); (1)
const T& at(const Key& key) const; (2)
template<class K>
T& at(const K& x); (3) [C++26]
template<class K>
const T& at(const K& x) const; (4) [C++26]
```

Returns a reference to the mapped value of the element with key equivalent to `key`.
If no such element exists, an exception of type `std::out_of_range` is thrown.

## Exceptions

`std::out_of_range` if the key does not exist.

## Time complexity

Logarithmic in the size of the container: O(log N).

## Examples

```cpp
#include <cassert>
#include <map>
#include <stdexcept>
#include <string>

std::map<std::string, int> m{{"a", 1}};

assert(m.at("a") == 1);
m.at("a") = 42;
assert(m.at("a") == 42);

try {
    m.at("b");
    assert(false);
} catch (const std::out_of_range&) {
}
```
