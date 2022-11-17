from libqtile import layout
from colors import colors

def monadtall():
    align = 0
    border_focus = colors['purple']
    border_width = 2
    max_ratio = 0.75
    margin = 7
    ratio = 0.68
    return layout.MonadTall(
            align=align,
            border_focus=border_focus,
            border_width=border_width,
            max_ratio=max_ratio,
            margin=margin,
            ratio=ratio
            )

def columns():
    border_focus = colors['purple']
    border_width = 2
    margin = [8, 4, 8, 4]
    return layout.Columns(
            border_focus=border_focus,
            border_width=border_width,
            margin=margin
            )

def monadtallthree():
    ratio = 0.5
    margin = 5
    border_focus = colors['purple']
    border_width = 1
    return layout.MonadThreeCol(
            ratio=ratio,
            margin=margin,
            border_focus=border_focus,
            border_width=border_width
            )

def maxlayout():
    return layout.Max()


