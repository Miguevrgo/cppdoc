---
symbol: std::print
header: <print>
since: C++23
---

Prints formatted output to `stdout` or an output stream.

## Usage

```cpp
template<class... Args>
void print(std::format_string<Args...> fmt, Args&&... args); (1)

template<class... Args>
void print(std::FILE* stream, std::format_string<Args...> fmt, Args&&... args); (2)
```

Formats `args` according to the format string `fmt` and outputs the result:

1. Writes formatted output to `stdout`.
2. Writes formatted output to `stream`.

## Synchronization & Behavior

- **Thread safety**: Calls to `std::print` targeting the same output stream are synchronized. Concurrent calls from multiple threads will not interleave their output.
- **Buffering**: Output is buffered according to the underlying `stream` buffer policy.

## Exceptions

Throws `std::format_error` if `fmt` is an invalid format string, `std::bad_alloc` if memory allocation fails, or `std::system_error` on stream output failure.

## Examples

```cpp
#include <print>
#include <cstdio>
#include <thread>

const auto *world_word = "World";
std::print("Hello, {}!\n", world_word);       // Hello, World!
std::print("Hello, {1} {0} {2}!\n", 2, 1, 3); // 1 2 3
std::print(stderr, "Error: {}\n", "file not found");

{
    std::jthread t1([] { std::print("Thread 1: val = {}\n", 42); });
    std::jthread t2([] { std::print("Thread 2: val = {}\n", 99); });
}
```
