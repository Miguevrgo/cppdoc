---
symbol: std::list::emplace_back
header: <list>
since: C++11
---

Constructs an element in place at the end of the list, forwarding `args` to its constructor.

## Usage

```cpp
template<class... Args>
void emplace_back(Args&&... args); [C++11, until C++17]

template<class... Args>
reference emplace_back(Args&&... args); [C++17]
```

`args` are forwarded to `T`'s constructor, each keeping its value category, avoiding the temporary that `push_back` would need. Since C++17 a reference to the new element is returned.

## Exceptions

If an exception is thrown other than by the constructor of `T`, this function has no effect.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <list>
#include <string>

std::list<std::string> l;

std::string& ref = l.emplace_back(3, 'x'); // builds "xxx" in place

assert(ref == "xxx");
assert(&ref == &l.back());
```
