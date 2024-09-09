function fish_greeting
    if status is-interactive
        if test "$TERM" != "linux"
            starship init fish | source
            pfetch
            echo Welcome (set_color blue; echo -n $USER; set_color normal) to (set_color green; echo -n $hostname; set_color normal)
        end
    end
end

set -x PATH $HOME/.cargo/bin $PATH

# Created by `pipx` on 2023-06-20 20:54:03
set PATH $PATH /home/brumus/.local/bin
