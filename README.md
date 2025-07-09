# 🖨️ ft_printf - 42 School Project

## 📚 Project Overview

**ft_printf** is a custom implementation of the standard C `printf` function. The goal is to replicate the basic functionality of `printf` by parsing format strings and outputting formatted data to the standard output.

This project covers common conversion specifiers and flags, excluding the bonus features like wide characters or additional conversions.

---

## 💡 What I Learned

- 🔍 How to parse complex format strings character by character.
- 🧩 Handling variable arguments using `stdarg.h` (`va_start`, `va_arg`, `va_end`).
- 🛠 Implementing conversion specifiers like:
  - `%c` (character)
  - `%s` (string)
  - `%d` and `%i` (signed decimal integers)
  - `%u` (unsigned integers)
  - `%x` and `%X` (hexadecimal integers)
  - `%p` (pointer addresses)
- 📏 Managing flags such as width, precision, zero-padding, and left justification.
- 📚 Working with number-to-string conversions.
- 🧹 Writing modular and maintainable code with multiple helper functions.
- ⚠️ Handling edge cases and invalid inputs gracefully.

---

## 🛠 Technical Concepts Used

- Variadic functions and `stdarg.h`
- String manipulation and buffer management
- Integer to string conversions (including base conversions for hex)
- Format parsing and flag interpretation
- Output formatting with padding and alignment
- Memory management and avoiding buffer overflows
- Writing clean, readable C code following 42 Norm

---

## 🚀 Functionality

- Supports the standard `printf` format specifiers (without bonus extensions).
- Prints formatted output to the standard output.
- Handles multiple flags and modifiers in format strings.
- Returns the total number of characters printed.

---

## ⚠️ Challenges Overcome

- Correctly parsing and applying width and precision flags.
- Managing variable argument lists safely and efficiently.
- Implementing hexadecimal and pointer formatting.
- Handling edge cases like NULL strings and zero values.
- Ensuring output length matches standard `printf`.

---

## 🧠 Key Takeaways

This project deepened my understanding of:

- Low-level string and format parsing.
- Variadic functions in C.
- Writing flexible and robust formatting functions.
- Importance of meticulous testing and edge case handling.
