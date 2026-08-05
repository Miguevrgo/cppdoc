---
symbol: std::array::fill
header: <array>
since: C++11
---

Fills the array with the value provided.

## Usage

```cpp
void fill( const T& value );
```

Assigns `value` to all the elements in the array.

## Time complexity

Linear with the size of the array.

## Examples

```cpp
#include <array>
#include <cassert>

std::array<char, 6> char_vec;
char_vec.fill({'a', 'b'});

assert((char_vec == {'a', 'b', 'a', 'b', 'a', 'b'}));
```
