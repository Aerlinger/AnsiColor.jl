using AnsiColor
using Base.Test

println(black("black"))
@test black("Foo") == "\e[0;30;49mFoo\e[0m"
@test black("Foo") == colorize(:black, "Foo")

println(red("red"))
@test red("Foo") == "\e[0;31;49mFoo\e[0m"
@test red("Foo") == colorize(:red, "Foo")

println(green("green"))
@test green("Foo") == "\e[0;32;49mFoo\e[0m"
@test green("Foo") == colorize(:green, "Foo")


println(yellow("yellow"))
@test yellow("Foo") == "\e[0;33;49mFoo\e[0m"
@test yellow("Foo") == colorize(:yellow, "Foo")

println(blue("blue"))
@test blue("Foo") == "\e[0;34;49mFoo\e[0m"
@test blue("Foo") == colorize(:blue, "Foo")

println(magenta("magenta"))
@test magenta("Foo") == "\e[0;35;49mFoo\e[0m"
@test magenta("Foo") == colorize(:magenta, "Foo")

println(cyan("cyan"))
@test cyan("Foo") == "\e[0;36;49mFoo\e[0m"
@test cyan("Foo") == colorize(:cyan, "Foo")

println(white("white"))
@test white("Foo") == "\e[0;37;49mFoo\e[0m"
@test white("Foo") == colorize(:white, "Foo")

println(uncolor("default"))
@test uncolor("Foo") == "\e[0;39;49mFoo\e[0m"
@test uncolor("Foo") == colorize(:default, "Foo")

