#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
next_hue() {
    c1=$(($RANDOM % 7 + 31))
	c2=$(($RANDOM % 7 + 31))
	c3=$(($RANDOM % 7 + 31))
	c4=$(($RANDOM % 7 + 31))
	c5=$(($RANDOM % 7 + 31))
	c6=$(($RANDOM % 7 + 31))
	c7=$(($RANDOM % 7 + 31))
        color1="\e[1;${c1}m"
	color2="\e[1;${c2}m"
	color3="\e[1;${c3}m"
	color4="\e[1;${c4}m"
	color5="\e[1;${c5}m"
	color6="\e[1;${c6}m"
	color7="\e[1;${c7}m"
        white="\e[1;37m"
	PS1="\[$color1\]\u\[$color2\]@\[$color3\]\h \[$color4\][\[$color5\]\W\[$color6\]]\[$color7\]#\[$white\] "
}
PROMPT_COMMAND=next_hue

