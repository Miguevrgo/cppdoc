---
symbol: std::println
header: <print>
since: C++23
---

Formats arguments according to the format string `fmt` and prints the result followed by a newline (`\n`) to `stdout` or an output stream.

## Usage

```cpp
template<class... Args>
void println(std::format_string<Args...> fmt, Args&&... args); (1)

template<class... Args>
void println(std::FILE* stream, std::format_string<Args...> fmt, Args&&... args); (2)

void println(); (3) [C++26]

void println(std::FILE* stream); (4) [C++26]
```

Formats `args` according to the format string `fmt` and outputs the result followed by a newline:

1. Writes formatted output with a newline (`\n`) to `stdout`.
2. Writes formatted output with a newline (`\n`) to `stream`.
3. Writes a newline character (`\n`) to `stdout`.
4. Writes a newline character (`\n`) to `stream`.

## Synchronization & Behavior

- **Thread safety**: Calls to `std::println` targeting the same output stream are synchronized. Concurrent calls from multiple threads will not interleave their output lines.
- **Buffering**: Output is buffered according to the underlying `stream` buffer policy. Appends a `'\n'` character at the end.

## Exceptions

Throws `std::format_error` if `fmt` is an invalid format string, `std::bad_alloc` if memory allocation fails, or `std::system_error` on stream output failure.

## Examples

```cpp
#include <print>
#include <cstdio>
#include <thread>

const auto *world_word = "World";
std::println("Hello, {}!", world_word);       // Hello, World!
std::println("Hello, {1} {0} {2}!", 2, 1, 3); // Hello, 1 2 3!
std::println(stderr, "Error: {}", "file not found");
std::println();                               // Prints just a newline

{
    std::jthread t1([] { std::println("Thread 1: val = {}", 42); });
    std::jthread t2([] { std::println("Thread 2: val = {}", 99); });
}
```
