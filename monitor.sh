VGA_MONITOR_LINE=$(xrandr | grep "^VGA.*connected")
VGA_MONITOR_LINE=${VGA_MONITOR_LINE%%ed*}
VGA_MONITOR=${VGA_MONITOR_LINE%% *}
VGA_MONITOR_STATUS=${VGA_MONITOR_LINE#* }

LVDS_MONITOR_LINE=$(xrandr | grep "^LVDS.*connected")
LVDS_MONITOR=${LVDS_MONITOR_LINE%% *}

if [ $VGA_MONITOR_STATUS = "connect" ]; then
    xrandr --output $LVDS_MONITOR --off --output $VGA_MONITOR --auto 
else
    xrandr --output $LVDS_MONITOR --auto --output $VGA_MONITOR --off
fi