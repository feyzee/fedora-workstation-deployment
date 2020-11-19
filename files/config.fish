set -Ux GOPATH ~/.go
set -Ux QT_QPA_PLATFORMTHEME gnome
set -Ux QT_STYLE_OVERRIDE adwaita-dark
set -Ux QT_QPA_PLATFORM wayland
set -Ux EDITOR /usr/bin/vim
set -Ux FZF_DEFAULT_COMMAND 'fd --type file --follow --color=always --hidden --exclude .git'
set -Ux FZF_FIND_FILE_COMMAND 'fd --type file --folloe --color=always --hidden --exclude=.git . \$dir'
set -Ux FZF_PREVIEW_DIR_CMD 'ls'
set -Ux FZF_DEFAULT_OPTS '-m --height=70% --preview="bat --theme 'Dracula' {}" --preview-window=right:60%:wrap'

starship init fish | source

alias python "python3"
alias protontricks "flatpak run --command=protontricks com.valvesoftware.Steam --no-runtime"
alias cp "cp -pur"

abbr s "sudo"
abbr sd "sudo dnf install"
abbr dnfs "sudo dnf search"
abbr update "sudo dnf update"
abbr remove "sudo dnf remove"
abbr gcom "git commit -m"
abbr gc "git clone"
abbr gch "git checkout"
abbr gm "git merge"
abbr gadd "git add"
abbr gpo "git push origin"
abbr gpom "git push origin master"
abbr gst "git status"
abbr tf "terraform"
abbr tfi "terraform init"
abbr tfp "terraform plan"
abbr tfa "terraform apply"
abbr tfd "terraform destroy"
abbr tfr "terraform refresh"
abbr dk "docker"
abbr dkr "docker run"
abbr dkb "docker build"
abbr dkst "docker start"
abbr dkstop "docker stop"
abbr dkpull "docker pull"
abbr dkps "docker ps"
abbr dki "docker images"
abbr dkc "docker-compose"
abbr dkcu "docker-compose up"
abbr tmas "tmux attach-session -t"
abbr tmls "tmux ls"
abbr tmnew "tmux new -s"
abbr tmkill "tmux kill-session -t"
abbr xcs "xclip -sel clip"
abbr ssc "sudo systemctl"
abbr ssce "sudo systemctl enable"
abbr sscs "sudo systemctl start"
abbr fd "fd -Hi" # hidden + ignore case
abbr fde "fd -e" # extension of file
abbr fds "find -S" # size based search
abbr fdd "fd -t d" # directory only
abbr py "python"
abbr py2 "python2"
abbr wcp "wl-copy"
abbr wps "wl-paste"
abbr vgi "vagrant init"
abbr vgup "vagrant up"
abbr vgh "vagrant halt"
abbr vgd "vagrant destroy -f"
abbr vgssh "vagrant ssh"
#abbr b64d "echo '' | base64 --decode"
#abbr b64e "echo '' | base64 --encode"
abbr pyserver "python -m http.server"
abbr kssh "kitty +kitten ssh"


# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/__tabtab.fish ]; and . ~/.config/tabtab/__tabtab.fish; or true

function bind_bang
    switch (commandline -t)[-1]
        case "!"
            commandline -t $history[1]
            commandline -f repaint
        case "*"
            commandline -i !
    end
end


function bind_dollar
    switch (commandline -t)[-1]
        case "!"
            commandline -t ""
            commandline -f history-token-search-backward
        case "*"
            commandline -i '$'
    end
end

function fish_user_key_bindings
    bind ! bind_bang
    bind '$' bind_dollar
end
