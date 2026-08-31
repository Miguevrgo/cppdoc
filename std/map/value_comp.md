---
symbol: std::map::value_comp
header: <map>
since: C++98
---

Returns the function used to compare elements by key.

## Usage

```cpp
value_compare value_comp() const;
```

Returns a function object that compares two `value_type` objects (key-value pairs) by applying `key_comp()` to their `first` members. `value_compare` is a nested class of `map`.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <map>

std::map<int, int> numbers{{1, 10}, {2, 20}};

auto cmp = numbers.value_comp();
assert(cmp(*numbers.begin(), *numbers.rbegin()));
```
