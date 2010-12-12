# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sio/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall
### ALIASES
source ~/.zsh_aliases
### END ALIASES
### HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt SHARE_HISTORY
### END HISTORY
### KEYS
autoload zkbd
case $TERM in
xterm*|rxvt)
	precmd () { print -Pn "\e]0;%n@%m: %~\a" }
	preexec () { print -Pn "\e]0;%n@%m: $1\a" }
;;
screen)
	precmd () { print -Pn "\033k%~\033\\" }
	preexec () { print -Pn "\033k$1\033\\" }
;;
linux|screen|screen.linux|rxvt)
	bindkey "^[[2~" yank
	bindkey "^[[3~" delete-char
	bindkey "^[[5~" up-line-or-history
	bindkey "^[[6~" down-line-or-history
	bindkey "^[[1~" beginning-of-line
	bindkey "^[[4~" end-of-line
	bindkey "^[e" expand-cmd-path      # C-e for expanding path of typed command
	bindkey "^[[A" up-line-or-search   # up arrow for back-history-search
	bindkey "^[[B" down-line-or-search # down arrow for fwd-history-search
	bindkey " "  magic-space           # do history expansion on space
 ;;
*xterm*|rxvt-unicode|(dt|k|E)term)
	bindkey "^[[2~" yank
	bindkey "^[[3~" delete-char
	bindkey "^[[5~" up-line-or-history
	bindkey "^[[6~" down-line-or-history
	bindkey "^[[H" beginning-of-line
	bindkey "^[[F" end-of-line
	bindkey "^E" expand-cmd-path  
	bindkey "^[[A" up-line-or-search
	bindkey "^[[B" down-line-or-search
	bindkey " "  magic-space
;;
esac
### END KEYS
### PROMPT
  #autoload -U promptinit
  #promptinit
  #prompt adam2
[ "x$USER" = "xroot" ] && NAMECOLOR=red || NAMECOLOR=blue
PROMPT="
%B%F{$NAMECOLOR}[%n] %F{green}%/# %f%b"
### END PROMPT
### COMPLETION COLORS
LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:';
export LS_COLORS
zmodload -i zsh/complist
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
### END COMPLETION COLORS
### TERMINAL HEADER
precmd() {
  [[ -t 1 ]] || return
  case $TERM in
    (sun-cmd) print -Pn "\e]l%~\e\\"
      ;;
    (*xterm*|*rxvt*|(dt|k|E)term) print -Pn "\e]2;%n@%m: %~\a"
      ;;
  esac
}
### END TERMINAL HEADER
### LONG RUNNING
#report time for long working commands
REPORTTIME=120
TIMEFMT="%U user %S system %P cpu %*Es total"
### END LONG RUNNING
### CORRECT
setopt CORRECT
# Включение поддержки выражений вроде «{1-3}» или «{a-d}» — они будут разворачиваться
#  в «1 2 3» и «a b c d» соответственно
setopt BRACECCL
### END CORRECT
### KILL COMPLETION
zstyle ':completion:*:processes' command 'ps xua'
zstyle ':completion:*:processes' sort false
zstyle ':completion:*:processes-names' command 'ps xho command'
### END KILL COMPLETION
### ARROWS SEARCH
autoload -U predict-on
zle -N predict-on
zle -N predict-off
bindkey "^X^Z" predict-on # C-x C-z
bindkey "^Z" predict-off # C-z
predict-on
### END ARROWS SEARCH
### TETRIS
autoload -U tetris
zle -N tetris
bindkey ^T tetris
### END TETRIS
### SCREENSAVER
[ $USER = root ] || TMOUT=60 && trap 'screensaver' 14
#~      Каждые 60 секунд после ввода последней команды будет срабатывать SIGALRM
#~      (trap 14) и будет проверяться условие
IDLELIMIT=360
#~      IDLELIMIT - максимальная величина idle к моменту проверки (замените на
#~      удобное вам значение в секундах)
screensaver()
{
    if [ $TTYIDLE -ge $IDLELIMIT ]
        then
            #~ ↓↓↓ Замените этот блок на собственный ↓↓↓
            watch -n 1 tail -n 3 /var/log/wimax.log
            echo -ne "\n\e[1;34;49m[$USER] \e[1;32;49m$PWD# \e[0m"
            #~ ↑↑↑ Замените этот блок на собственный ↑↑↑
    fi
}
### END SCREENSAVER
### REMOVE ~/bin FROM PATH
[ $USER = root ] || PATH=/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/games
### END REMOVE ~/bin FROM PATH
# Anchored history search using cursor up/down keys:
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
# End Anchored history search using cursor up/down keys
