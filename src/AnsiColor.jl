module AnsiColor
export colorize, black, red, green, yellow, blue, magenta, cyan, white, uncolor

COLORS = Dict(
  "black"          => 0,
  "red"            => 1,
  "green"          => 2,
  "yellow"         => 3,
  "blue"           => 4,
  "magenta"        => 5,
  "cyan"           => 6,
  "white"          => 7,
  "default"        => 9,

  "light_black"    => 60,
  "light_red"      => 61,
  "light_green"    => 62,
  "light_yellow"   => 63,
  "light_blue"     => 64,
  "light_magenta"  => 65,
  "light_cyan"     => 66,
  "light_white"    => 67
  )

MODES = Dict(
  "default"        => 0,
  "bold"           => 1,
  "underline"      => 4,
  "blink"          => 5,
  "swap"           => 7,
  "hide"           => 8
  )

COLOR_OFFSET       = 30
BACKGROUND_OFFSET  = 40

colorize(color::AbstractString, str::AbstractString; background::AbstractString = "default", mode::AbstractString="default") =
  "\033[$(MODES[mode]);$(COLOR_OFFSET + COLORS[color]);$(BACKGROUND_OFFSET + COLORS[background])m$(str)\033[0m"

colorize(color::Symbol, str::AbstractString; background::AbstractString = "default", mode::AbstractString="default") =
  colorize(string(color), str; background=background, mode=mode)

black(str::AbstractString)    = colorize(:black, str)
red(str::AbstractString)      = colorize(:red, str)
green(str::AbstractString)    = colorize(:green, str)
yellow(str::AbstractString)   = colorize(:yellow, str)
blue(str::AbstractString)     = colorize(:blue, str)
magenta(str::AbstractString)  = colorize(:magenta, str)
cyan(str::AbstractString)     = colorize(:cyan, str)
white(str::AbstractString)    = colorize(:white, str)
uncolor(str::AbstractString)  = colorize(:default, str)

light_black(str::AbstractString)    = colorize(:light_black, str)
light_red(str::AbstractString)      = colorize(:light_red, str)
light_green(str::AbstractString)    = colorize(:light_green, str)
light_yellow(str::AbstractString)   = colorize(:light_yellow, str)
light_blue(str::AbstractString)     = colorize(:light_blue, str)
light_magenta(str::AbstractString)  = colorize(:light_magenta, str)
light_cyan(str::AbstractString)     = colorize(:light_cyan, str)
light_white(str::AbstractString)    = colorize(:light_white, str)

end
