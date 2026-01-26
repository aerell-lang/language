## 1. Fundamental & Basic

### 1.1 Struktur Program

* `#include`
* `int main(void)` / `int main(int argc, char** argv)`
* Return value (`return 0`)
* Komentar

  * `// single-line`
  * `/* multi-line */`

---

### 1.2 Tipe Data Dasar

**Integer**

* `char`
* `short`
* `int`
* `long`
* `long long`
* `signed`, `unsigned`

**Floating**

* `float`
* `double`
* `long double`

**Boolean**

* `_Bool`
* `stdbool.h` → `bool`

**Void**

* `void`

---

### 1.3 Literal

* Integer (`10`, `0xFF`, `0b1010` *compiler extension*)
* Floating (`3.14`, `1e9`)
* Character (`'a'`)
* String (`"hello"`)
* Escape (`\n`, `\t`, `\0`)

---

### 1.4 Variable

* Deklarasi
* Inisialisasi
* Scope (block, file)
* Lifetime

---

### 1.5 Operator

**Aritmatika**

* `+ - * / %`

**Relasional**

* `== != < > <= >=`

**Logika**

* `&& || !`

**Bitwise**

* `& | ^ ~ << >>`

**Assignment**

* `= += -= *= /= %= <<= >>= &= |= ^=`

**Unary**

* `++ --`
* `&` (address-of)
* `*` (dereference)
* `sizeof`
* `_Alignof`

**Ternary**

* `?:`

**Comma**

* `,`

---

## 2. Control Flow

### 2.1 Percabangan

* `if`
* `else`
* `else if`
* `switch`
* `case`
* `default`

---

### 2.2 Loop

* `for`
* `while`
* `do while`

---

### 2.3 Control Jump

* `break`
* `continue`
* `return`
* `goto`
* Label

---

## 3. Fungsi

* Deklarasi
* Definisi
* Prototype
* Parameter
* Return value
* `void` function
* Variadic function (`...`)
* `stdarg.h`

---

## 4. Pointer (Inti C 🔥)

* Pointer ke data
* Pointer ke pointer
* Pointer ke function
* Pointer arithmetic
* `NULL`
* Dereference
* Address-of
* Const pointer vs pointer-to-const

```c
const int* p;     // data const
int* const p;     // pointer const
```

---

## 5. Array

* Static array
* Multidimensional array
* Array decay → pointer
* Array + pointer equivalence
* VLA (Variable Length Array – C99)

---

## 6. Struct, Union, Enum

### 6.1 `struct`

* Field
* Nested struct
* Anonymous struct
* Padding & alignment
* Designated initializer

---

### 6.2 `union`

* Memory overlay
* Type punning (well-defined dengan memcpy)

---

### 6.3 `enum`

* Named constants
* Underlying integer type
* Flag-style enum

---

## 7. Typedef & Alias

* `typedef`
* Alias untuk:

  * Struct
  * Function pointer
  * Primitive

---

## 8. Memory Management

* `malloc`
* `calloc`
* `realloc`
* `free`
* Stack vs heap
* Dangling pointer
* Double free
* Memory leak

---

## 9. Preprocessor (Meta Programming)

### 9.1 Macro

* Object-like macro
* Function-like macro
* Macro with variadic args
* Macro pitfalls

---

### 9.2 Directive

* `#define`
* `#undef`
* `#include`
* `#ifdef`
* `#ifndef`
* `#if`
* `#elif`
* `#else`
* `#endif`
* `#error`
* `#pragma`

---

### 9.3 Operator Preprocessor

* `#` (stringize)
* `##` (token paste)

---

## 10. Const & Qualifier

* `const`
* `volatile`
* `restrict`
* `_Atomic` (C11)

---

## 11. Storage Class

* `auto`
* `register`
* `static`
* `extern`
* `_Thread_local`

---

## 12. Header & Translation Unit

* Header guard
* One-definition rule (C style)
* External linkage
* Internal linkage
* Compilation unit

---

## 13. I/O

### 13.1 Standard I/O

* `printf`, `scanf`
* `puts`, `gets` (deprecated)
* `fopen`, `fclose`
* `fread`, `fwrite`
* `fprintf`, `fscanf`
* `stdin`, `stdout`, `stderr`

---

### 13.2 File

* Text vs binary
* File pointer
* Seek (`fseek`, `ftell`, `rewind`)

---

## 14. String & Memory Utility

* `strlen`
* `strcpy`, `strncpy`
* `strcat`
* `strcmp`
* `memcpy`
* `memmove`
* `memcmp`
* `memset`

---

## 15. Error Handling

* Return code
* `errno`
* `perror`
* `strerror`
* Assertion (`assert.h`)
* Defensive programming

---

## 16. Standard Library Categories

* `<stdlib.h>`
* `<stdio.h>`
* `<string.h>`
* `<math.h>`
* `<time.h>`
* `<ctype.h>`
* `<limits.h>`
* `<float.h>`
* `<stdint.h>`
* `<stddef.h>`

---

## 17. Advanced / Low-Level

### 17.1 ABI Awareness

* Calling convention
* Stack layout
* Alignment

---

### 17.2 Bit-level Programming

* Bitmask
* Packed struct
* Endianness

---

### 17.3 Inline Assembly

* `asm` / `__asm__` (compiler-specific)

---

### 17.4 Atomic & Concurrency (C11)

* `_Atomic`
* `stdatomic.h`
* Memory order

---

### 17.5 UB (Undefined Behavior)

* Signed overflow
* Use-after-free
* Out-of-bounds
* Type punning ilegal
* Double free

---

## 18. Build & Link (Bagian dari Ekosistem C)

* Compiler (`gcc`, `clang`, `msvc`)
* Linker
* Static vs dynamic library
* Object file (`.o`)
* ABI & platform

---

## 19. Filosofi C (Ini penting)

* Tidak ada:

  * Class
  * Namespace
  * Exception
  * GC
  * Overloading
* Semua eksplisit
* Zero abstraction cost
* “Trust the programmer”