---
symbol: std::unreachable
header: <utility>
since: C++23
---

Informs the compiler that the point of invocation is unreachable.

## Usage

```cpp
[[noreturn]] void unreachable();
```

Invokes undefined behavior, may be used to optimize impossible branches away or to trap them avoiding
further execution.

## Time complexity

O(1)

## Examples

```cpp
#include <cassert>
#include <utility>

enum class Direction { North, South, East, West };

auto direction_name = [](Direction d) -> const char* {
    switch (d) {
        case Direction::North: return "North";
        case Direction::South: return "South";
        case Direction::East:  return "East";
        case Direction::West:  return "West";
    }
    std::unreachable();
};

assert(direction_name(Direction::North)[0] == 'N');
```
