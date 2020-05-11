function randr-office
  xrandr --output DP2 --auto
  xrandr --output HDMI1 --auto
  xrandr --output DP2 --left-of eDP1
  xrandr --output HDMI1 --mode 3840x2160 --left-of DP2 --rotate left
  xrandr --output eDP1 --off
end
