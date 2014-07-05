module AnsiColor
export colorize, black, red, green, yellow, blue, magenta, cyan, white, uncolor

COLORS = {
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
  }

MODES = {
  "default"        => 0,
  "bold"           => 1,
  "underline"      => 4,
  "blink"          => 5,
  "swap"           => 7,
  "hide"           => 8
  }

COLOR_OFFSET       = 30
BACKGROUND_OFFSET  = 40

function colorize(color::String, str::String; background::String = "default", mode::String="default")
  "\033[$(MODES[mode]);$(COLOR_OFFSET + COLORS[color]);$(BACKGROUND_OFFSET + COLORS[background])m$(str)\033[0m"
end

function colorize(color::Symbol, str::String; background::String = "default", mode::String="default")
  colorize(string(color), str; background=background, mode=mode)
end

black(str::String)    = colorize(:black, str)
red(str::String)      = colorize(:red, str)
green(str::String)    = colorize(:green, str)
yellow(str::String)   = colorize(:yellow, str)
blue(str::String)     = colorize(:blue, str)
magenta(str::String)  = colorize(:magenta, str)
cyan(str::String)     = colorize(:cyan, str)
white(str::String)    = colorize(:white, str)
uncolor(str::String)  = colorize(:default, str)

light_black(str::String)    = colorize(:light_black, str)
light_red(str::String)      = colorize(:light_red, str)
light_green(str::String)    = colorize(:light_green, str)
light_yellow(str::String)   = colorize(:light_yellow, str)
light_blue(str::String)     = colorize(:light_blue, str)
light_magenta(str::String)  = colorize(:light_magenta, str)
light_cyan(str::String)     = colorize(:light_cyan, str)
light_white(str::String)    = colorize(:light_white, str)

end

