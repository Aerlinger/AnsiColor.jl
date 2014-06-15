module AnsiColor
  export colorize

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

  function colorize(str::String, color::String; background::String = "default", mode::String="default")
    "\033[$(MODES[mode]);$(COLOR_OFFSET + COLORS[color]);$(BACKGROUND_OFFSET + COLORS[background])m$(str)\033[0m"
  end
end

