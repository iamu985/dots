from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Key, Match, Screen 
from libqtile.lazy import lazy

from colors import colors 
from keybindings import keys_mc_list, keys_mk_list, keys_ms_list, keys_groups_list, keys_layout_list
from layouts import monadtall, columns, monadtallthree, maxlayout

# Variables
group_names = ['T', '爵', '', 'R', '漣', '', '', 'שׂ', '']
group_label = [i for i in 'zxcvbasdf']
mod = 'mod4'

# Keybindings
keys = []
keys.extend(keys_mc_list())
keys.extend(keys_mk_list())
keys.extend(keys_ms_list())
keys.extend(keys_groups_list(group_names, group_label))
keys.extend(keys_layout_list())

# Layouts
layouts = [
        monadtall(),
        columns(),
        monadtallthree(),
        maxlayout()
]

# Widget Defaults
widget_defaults = dict(
    font="Hack regular",
    fontsize=12,
    foreground=colors['black'],
    background=colors['pwhite'],
    padding=0,
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        wallpaper='~/Pictures/system-wallpaper/japan-city.jpg',
        wallpaper_mode='stretch',
        top=bar.Bar(
            [
                widget.Sep(background=colors['pteal'],padding=10, linewidth=0),

                # Group Box Widget
                widget.TextBox(
                    background=colors['pteal'],
                    fontsize=16, 
                    padding=0
                    ),
                widget.GroupBox(
                    border=colors['blue'],
                    block_highlight_text_color=colors['yellow'],
                    background=colors['pteal'],
                    highlight_method='block',
                    active=colors['red'],
                    inactive=colors['purple'],
                    borderwidth=2, 
                    padding=3,
                    font='OpenDyslexic Nerd Font',
                    ),
                widget.TextBox(
                    foreground=colors['red'], 
                    fontsize=24, 
                    padding=0
                    ),
                widget.Sep(
                    background=colors['pteal'], 
                    padding=0, 
                    linewidth=0
                    ),
                # Current Layout Widget
                widget.TextBox(
                    fontsize=24, 
                    foreground=colors['purple'],
                    font='OpenDyslexic Nerd Font',
                    padding=0
                    ),
                widget.CurrentLayout(
                    background=colors['pbg'],
                    foreground=colors['purple'],
                    fmt="  {}",
                    fontsize=16, 
                    padding=3
                    ),
                widget.TextBox(
                    foreground=colors['purple'], 
                    background=colors['pbg'],
                    fontsize=24, 
                    padding=0
                    ),
                widget.Sep(
                    linewidth=0
                    ),


                # Clock Widget
                widget.TextBox(
                        foreground=colors['blue'],
                        background=colors['ppurple'],
                        fontsize=24, 
                        padding=0
                        ),
                widget.Clock(
                        format=" %I:%M %p |  %A %B %d ", 
                        background=colors['ppurple'],
                        foreground=colors['blue'],
                        fontsize=16,
                        ),
                widget.TextBox(
                        foreground=colors['blue'], 
                        background=colors['ppurple'],
                        fontsize=24, 
                        padding=0
                        ),
                widget.Sep(
                        padding=0, 
                        linewidth=0
                        ),

                # Window Name Widget
                widget.TextBox(
                        foreground=colors['red'], 
                        background=colors['pblue'],
                        fontsize=24, 
                        padding=0
                        ),
                widget.WindowName(
                        background=colors['pblue'],
                        foreground=colors['red'],
                        fontsize=16,
                        ), 
                widget.TextBox(
                        foreground=colors['red'], 
                        background=colors['pblue'],
                        fontsize=24, 
                        padding=0
                        ),
                widget.Sep(
                        padding=0, 
                        linewidth=0
                        ),
                
                # Wlan Widget
                widget.TextBox(
                        foreground=colors['blue'], 
                        background=colors['ppurple'], 
                        fontsize=24, 
                        padding=0
                        ),
                widget.Wlan(
                        interface="wlan0", 
                        format="{essid} {percent:2.0%}", 
                        fmt=" {}",
                        disconnected_message='睊',
                        background=colors['ppurple'], 
                        foreground=colors['blue'],
                        fontsize=16, 
                        # prefix='M', 
                        ),
                widget.TextBox(
                        foreground=colors['blue'], 
                        background=colors['ppurple'],
                        fontsize=24, 
                        padding=0
                        ),
                widget.Sep(
                        padding=0, 
                        linewidth=0
                        ),
                # Battery Widget
                widget.TextBox(
                        foreground=colors['purple'], 
                        background=colors['pbg'],
                        fontsize=16, 
                        padding=0
                        ),
                widget.Battery(
                        background=colors['pbg'], 
                        foreground=colors['purple'],
                        charge_char='', 
                        unknown_char="",
                        empty_char='', 
                        discharge_char='', 
                        full_char='', 
                        format='{char}{percent:2.0%}', 
                        fontsize=16,
                        update_interval=5,
                        ),
                widget.TextBox(
                        foreground=colors['purple'], 
                        background=colors['pbg'],
                        fontsize=16, 
                        padding=0
                        ),
                widget.Sep(
                        padding=0,
                        linewidth=0
                        ),

                # Net widget
                widget.TextBox(
                        background=colors['pteal'],
                        fontsize=16, 
                        padding=0
                        ),
                widget.Net(
                        interface="wlan0", 
                        format="{up} | {down}", 
                        background=colors['pteal'], 
                        foreground=colors['red'],
                        fontsize=16, 
                        # prefix='M', 
                        ),
                widget.TextBox(
                        foreground=colors['purple'], 
                        fontsize=16, 
                        padding=0
                        ),
                widget.Sep(
                        padding=14, 
                        linewidth=0
                        ),
                
                
                
           ],
            24,
            opacity=0.6,
        ),
    ),
]

mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ]
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

auto_minimize = True

wl_input_rules = None
wmname = "LG3D"
