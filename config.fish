source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

# alias for list files and directories verticaly
alias l 'eza -l1 --color=always --group-directories-first --icons'

# alias for reloading the configuration
alias reload 'source ~/.config/fish/config.fish'

# enable vim mode
fish_vi_key_bindings

# add flutter path
fish_add_path -g -p ~/sdk/flutter/bin

# add android studio path
fish_add_path /opt/android-studio/bin

# adding android-studio SDKs
fish_add_path ~/Android/Sdk/cmdline-tools/latest/bin
fish_add_path ~/Android/Sdk/platform-toosl
fish_add_path ~/Android/Sdk/emulator

