from libqtile.config import Key, Group
from libqtile.lazy import lazy
from key_combination import *

rofi_theme_dir = '~/.themes/rofi/themes/rounded-purple-dark.rasi'
terminal = 'alacritty'
notebook = 'obsidian'

def keys_mk_list():
    return [
            Key(
                mk, "h", 
                lazy.layout.left(), 
                desc="move focus left"
            ),

            Key
            (
                mk, "k", 
                lazy.layout.up(), 
                desc="move focus up"
            ),

            Key
            (
                mk, "l", 
                lazy.layout.right(), 
                desc="move focus right"
            ),

            Key
            (
                mk, "j", 
                lazy.layout.down(), 
                desc="move focus down"
            ),

            Key
            (
                mk, "space", 
                lazy.layout.next(), 
                desc="Move window focus to other window"
            ),

            Key(
                mk, "o", 
                lazy.layout.maximize(), 
                desc="Maximize the focussed window"
                ),

            Key
            (
                mk , "r", 
                lazy.spawn(f"rofi -show drun -theme {rofi_theme_dir}"),
                desc="Spawn rofi application launcher"
            ),
    
            Key
            (
                mk, "f", 
                lazy.window.toggle_floating(), 
                desc="Toggle focussed window from/to floating"
            ),

            Key(mk, "n", lazy.layout.normalize(), desc="Reset all window sizes"),
            Key(mk, 't', lazy.window.toggle_floating()),
            Key(mk, "Return", lazy.spawn(terminal), desc="Launch terminal"),
            Key(mk, "w", lazy.spawn("firefox"), desc="Launch firefox"),
            Key(mk, "o", lazy.spawn(notebook), desc="Launch Obsidian"),

            Key(mk, "Tab", lazy.next_layout(), desc="Toggle between layouts"),
            Key(mk, "q", lazy.window.kill(), desc="Kill focused window"),
        ]

def keys_ms_list():
    return [
            Key
            (
                ms, "r", 
                lazy.spawn(f"rofi -show window -theme {rofi_theme_dir}"),
                desc="Spawn rofi windows launcher"
            ),
            Key
            (
                ms, "h", 
                lazy.layout.shuffle_left(), 
                desc="Move window to the left"
            ),

            Key
            (
                ms, "l", 
                lazy.layout.shuffle_right(), 
                desc="Move window to the right"
            ),

            Key
            (
                ms, "j", 
                lazy.layout.shuffle_down(), 
                desc="Move window down"
            ),

            Key
            (
                ms, "k", 
                lazy.layout.shuffle_up(), 
                desc="Move window up"
            ),

            Key
            (
                ms, "Return", 
                lazy.layout.toggle_split(), 
                desc="Toggle between split and unsplit of stack"
            ),

            Key(ms, "z", lazy.window.togroup('z'), desc="Move window to Z workspace"),
            Key(ms, "x", lazy.window.togroup('x'), desc="Move window to x workspace"),
            Key(ms, "c", lazy.window.togroup('c'), desc="Move window to c workspace"),
            Key(ms, "v", lazy.window.togroup('v'), desc="Move window to v workspace"),
            Key(ms, "b", lazy.window.togroup('b'), desc="Move window to b workspace"),
            Key(ms, "a", lazy.window.togroup('a'), desc="Move window to a workspace"),
            Key(ms, "s", lazy.window.togroup('s'), desc="Move window to s workspace"),
            Key(ms, "d", lazy.window.togroup('d'), desc="Move window to d workspace"),
            Key(ms, "f", lazy.window.togroup('f'), desc="Move window to f workspace"),

        ]

def keys_mc_list():
    return [
            Key(mc, "h", lazy.layout.grow_left(), desc="Grow window to the left"),
            Key(mc, "l", lazy.layout.grow_right(), desc="Grow window to the right"),
            Key(mc, "j", lazy.layout.grow_down(), desc="Grow window down"),
            Key(mc, "k", lazy.layout.grow_up(), desc="Grow window up"),
            Key(mc, "r", lazy.reload_config(), desc="Reload the config"),
            Key(mc, "q", lazy.shutdown(), desc="Shutdown Qtile"),
        ]


def keys_groups_list(group_names, group_labels):
    groups = [Group(name=group_labels[i], label=group_names[i]) for i in range(len(group_names))]
    groupkeys = []
    for group in groups:
        keybind_change = Key(
                mk, group.name,
                lazy.group[group.name].toscreen(),
                desc = f"Moving to Group {group.name}"
                )
        keybind_shift = Key(
                ms, group.name,
                lazy.window.togroup(group.name),
                desc = f"Shift window to Group {group.name}"
                )
        groupkeys.append(keybind_change)
        groupkeys.append(keybind_shift)
    return groupkeys
        

def keys_layout_list():
    return [
            Key(ms, "1", lazy.group.setlayout("monadtall"), desc="Set to Monadtall layout"),
            Key(ms, "2", lazy.group.setlayout("monadthreecol"), desc="Set to Monad 3 Column layout"),
            Key(ms, "3", lazy.group.setlayout("columns"), desc="Set to Columns layout"),
            Key(ms, "4", lazy.group.setlayout("max"), desc="Set to Max layout"),
        ]







