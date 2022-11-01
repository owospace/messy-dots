if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Theme Settings
# --------------
set -g theme_display_user no
set -g theme_hide_hostname no
set -g theme_svn_prompt_enabled yes

# Theme Settings
# --------------
set -g color_user_bg 323232
set -g color_user_str e8e8e8
set -g color_dir_bg 111111
set -g color_dir_str e8e8e8



# Greeting on load
# ----------------
function fish_greeting
    set hour $(date +%H)
    set user $(whoami)
    set time $(date +"%H:%M")
    set suffix "It's currently $(date +"%H:%M")"
    fortune | cowsay -f eyes
    #figlet uwu | cowsay -n   
    echo " "
    echo " "
    if [ $hour -le 11 ] && [ $hour -gt 6 ];
        set prefix "Good morning"
    end
    if [ $hour -le 17 ] && [ $hour -gt 12 ];
        set prefix "Good afternoon"
    end
    if [ $hour -le 20 ] && [ $hour -gt 17 ];
        set prefix "Good evening"
    end
    if [ $hour -le 06 ] && [ $hour -gt 21 ];
        set prefix "Night"
    end
    echo "$prefix, $user."
    echo "It is currently $time"
    echo " "
end
