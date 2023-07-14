if status is-interactive
    # Commands to run in interactive sessions can go here
    # neofetch

    function fish_greeting
        echo Welcome (set_color blue; echo -n $USER; set_color normal) to (set_color green; echo -n $hostname; set_color normal)
    end
end

# Created by `pipx` on 2023-06-20 20:54:03
set PATH $PATH /home/brumus/.local/bin



# Exports
export EDITOR="nvim"
