# Options
set __fish_git_prompt_show_informative_status
set __fish_git_prompt_showcolorhints
set __fish_git_prompt_showupstream "informative"

# Colors
set green (set_color green)
set magenta (set_color magenta)
set normal (set_color normal)
set red (set_color red)
set yellow (set_color yellow)

# set __fish_git_prompt_color_branch magenta --bold
# set __fish_git_prompt_color_dirtystate white
# set __fish_git_prompt_color_invalidstate red
# set __fish_git_prompt_color_stagedstate yellow
# set __fish_git_prompt_color_upstream_ahead green
# set __fish_git_prompt_color_upstream_behind red

function fish_prompt
	test $SSH_TTY
    and printf (set_color red)$USER(set_color brwhite)'@'(set_color yellow)(prompt_hostname)' '
    test "$USER" = 'root'
    and echo (set_color red)"#"

    # Main
    set last_status $status
    echo -n (set_color b2cee1)Warbler (set_color f08b34)(prompt_pwd)(set_color normal)
    printf "%s\n" (__fish_git_prompt)
    echo -n (set_color F08B34)' ❯'(set_color b2cee1)'❯ '

end
