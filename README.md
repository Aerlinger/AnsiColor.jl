# AnsiColor

Full support for ANSI colored strings in Julia. Allows formatted output in REPL/Shell
environment for both Unix and Mac.

## Install

```julia
import Pkg; Pkg.add("AnsiColor")
```

## Using AnsiColor

AnsiColor wraps a string in the ANSI escape sequences used for colorized
text. The style, foreground and backround colors of a string can be set. 

**A simple example:**

Usage is similar to `Base.print_with_color` but additional arguments are
supported.

```julia
using AnsiColor

println(colorize(:red, "Hello World!", background="light_yellow", mode="underline"))
```

There are also convenience methods with a simpler syntax:


```julia
using AnsiColor

red("Hello World!")
```

**Supported colors available in most environments:**

  - `black`
  - `red`
  - `green`
  - `yellow`
  - `blue`
  - `magenta`
  - `cyan`
  - `white`
  - `default`
  - `light_black`
  - `light_red`
  - `light_green`
  - `light_yellow`
  - `light_blue`
  - `light_magenta`
  - `light_cyan`
  - `light_white`

**Supported text modes:**

  - `default`
  - `bold`
  - `underline`
  - `blink`
  - `swap`
  - `hide`

#### Why use AnsiColor instead of Base.print_with_color()?

There are more colors and text modes supported in AnsiColor than the
native print_with_color method. Also, you have direct access to the
formatted string for more flexibility, such as printing multiple colors
per line.

*TODO:* Windows Support

