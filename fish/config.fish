if status is-interactive
    # Commands to run in interactive sessions can go here
    # Variables
    set config "~/.config"

    alias c="clear"
    alias v="nvim"
    alias ls="exa --icons"
    alias lsa="exa -l --icons"
    alias off="shutdown now"
    alias r="reboot"
    alias e="exit"
    alias cb="cd .."
    alias settings="xfce4-settings-manager"
    alias dact="deactivate"
    alias act="source ./venv/bin/activate.fish"

# shortcuts to directories
    alias cdpy="cd ~/Programs/python"
    alias cdpro="cd ~/Programs"
    alias cdpic="cd ~/Pictures"
    alias cddoc="cd ~/Documents"
    alias cdlt="cdpy && cd leetcode"
    alias cdproj="cdpro && cd projects/"
    alias cdpropy="cdproj && cd python"
    alias cdprodj="cdpropy && cd django"
    alias cdprojs="cdpro && cd javascript"
    alias cdprorst="cdpro && cd rust"
    alias cdpdfs="cddoc && cd pdfs/5/"
    alias cdfore="cdproj && cd forevision_digital"
    alias cddow="cd ~/Downloads"
    alias cdconf="cd ~/.config/"

# config files
    alias edfi="nvim ~/.config/fish/config.fish"
    alias edqt="nvim ~/.config/qtile/config.py"
    alias ednv="nvim ~/.config/nvim"
    alias edpi="nvim ~/.config/picom/picom.conf"
    alias edal="nvim ~/.config/alacritty/alacritty.yml"
    alias edtm="nvim ~/.config/tmux/tmux.conf"

# pulseaudio
    alias vu="pulseaudio-ctl up 1"
    alias vd="pulseaudio-ctl down 1"
    alias vuf="pulseaudio-ctl up"
    alias vdf="pulseaudio-ctl down"
    alias vf="pulseaudio-ctl atmost"
    alias vx="pulseaudio-ctl mute"
    alias vs="pulseaudio-ctl set"
    alias vlvl="pulseaudio-ctl status"

# installer
    alias install="sudo pacman -S"
    alias uninstall="yay -R"
    alias update="sudo pacman -Syu"
    alias sync="sudo pacman -Sy"
    alias pacfind="sudo pacman -Ss"
    alias punidep="sudo pacman -Rcns"
    
    alias yinstall="yay -S"
    alias yuninstall="yay -R"
    alias yunidep="yay -Rcns"

# python
    alias p="python"
    alias pipins="pip3 install"
    alias pipuni="pip3 uninstall"
    alias pls="pip3 list"
    alias pipfind="python -m pip_search"
    alias ipy="ipython"

# rust 
    alias crun="cargo run"
    alias cbul="cargo build"
    alias cnew="cargo new"

# exa
    alias tree="exa -T --icons"

# extras
    alias ss="cmatrix"
    alias tt="tty-clock -c -C 5 -B"
    alias nft="neofetch --ascii ~/Pictures/ascii/head,txt"
    alias mp="mousepad"
    alias psvm="p -m venv venv && source venv/bin/activate.fish"
    alias pvm="source venv/bin/activate.fish"
    alias settings="xfce4-settings"
    alias zat="zathura"
    alias tch="touch"
    alias wc="weechat"
    alias tm="tmux"
    alias settings="xfce4-settings-manager"

# git
    alias clone="git clone"

# startup settings
    fish_config theme choose Dracula
    fish_config prompt choose arrow
    tt -C 1 -B
    
end
