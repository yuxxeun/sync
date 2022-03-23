alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l'
alias g='git init'
alias gc='git clone'
alias ga='git add .'
alias gcm='git commit -m'
alias gp='git push -u origin main'
alias grv='git remote -v'
alias grao='git remote add origin'

#php composer
alias pas='php artisan serve'
alias pag='php artisan migrate'

case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac
