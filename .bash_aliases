alias ll='ls -h -l --color=auto'

alias aoeu='setxkbmap se basic'
alias asdf='setxkbmap se custom && xmodmap ~/.Xmodmap'

# Usage examples:
# Both `up' and `up 1' equals `cd ..'
# `up 2' equals `cd ../..'
# `up 3' equals `cd ../../..'
# etc.
up ()
{
	COUNT="$1"
	for i in $(seq 1 $COUNT);
	do
		cd ..;
	done
}
