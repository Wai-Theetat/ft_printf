# ft_printf

A reimplementation of the C `printf` function (42 curriculum), using variadic arguments (`va_list`).

## Supported conversions
| Specifier | Output |
|---|---|
| `%c` | character |
| `%s` | string |
| `%p` | pointer address (hex) |
| `%d` `%i` | signed decimal |
| `%u` | unsigned decimal |
| `%x` `%X` | hexadecimal (lower / upper) |
| `%%` | literal `%` |

Returns the number of characters printed, like the original.

## Build & Use
```bash
make            # produces libftprintf.a
cc main.c -Iincludes -L. -lftprintf
```
```c
ft_printf("Hello %s, you are %d years old\n", "Wai", 21);
```
