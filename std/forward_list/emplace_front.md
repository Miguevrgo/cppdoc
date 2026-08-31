---
symbol: std::forward_list::emplace_front
header: <forward_list>
since: C++11
---

Constructs an element in place at the beginning of the list, forwarding `args` to its constructor.

## Usage

```cpp
template<class... Args>
void emplace_front(Args&&... args); [C++11, until C++17]

template<class... Args>
reference emplace_front(Args&&... args); [C++17]
```

`args` are forwarded to `T`'s constructor, each keeping its value category, avoiding the temporary that `push_front` would need. Since C++17 a reference to the new element is returned.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <forward_list>
#include <string>

std::forward_list<std::string> fl;

std::string& ref = fl.emplace_front(3, 'x'); // builds "xxx" in place

assert(ref == "xxx");
assert(&ref == &fl.front());
```
