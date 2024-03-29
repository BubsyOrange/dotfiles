#  ____   ____
# |  _ \ / __ \		Bubsy Orange
# | |_) | |  | |	https://github.com/BubsyOrange
# |  _ <| |  | |
# | |_) | |__| |
# |____/ \____/ 
#               
# My Fish config. Nothing too fancy.

### PATHS
set -e fish_user_paths
set -U fish_user_paths $HOME/.bin $HOME/.local/bin $HOME/.config/emacs/bin $HOME/Applications $fish_user_paths

## EXPORT
set fish_greeting				# Supresses fish intro message
set TERM "xterm-256color"                       # Sets the terminal type
set EDITOR "emacsclient -t -a ''"		# $EDITOR use Emacs in terminal
set VISUAL "emacsclient -c -a emacs"		# $VISUAL use Emacs in GUI mode

### ALIASES

# Vim and Emacs
alias vim='nvim'
alias em='/usr/local/bin/emacs -nw'
alias emacs="emacsclient -c -a 'emacs'"

# Changing "ls" to "eza"
alias ls='eza -al --color=always --group-directories-first' # my preferred listing
alias la='eza -a --color=always --group-directories-first'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first'  # long format
alias lt='eza -aT --color=always --group-directories-first' # tree listing
alias l.='eza -a | egrep "^\."'

# Git
alias addup='git add -u'
alias addall='git add -A'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -S -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push -u origin'
alias stat='git status'
alias tag='git tag'
alias newtag='git tag -a'

# Get error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# GPG Encryption
# Verify signature for ISOs
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# Receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

# Play audio files in current dir by type
alias playwav='mpv *.wav'
alias playogg='mpv *.ogg'
alias playmp3='mpv *.mp3'
alias playflac='mpv *.flac'
alias playm4a='mpv *.m4a'

# Play video files in current dir by type
alias playavi='mpv *.avi'
alias playmov='mpv *.mov'
alias playmp4='mpv *.mp4'
alias playmkv='mpv *.mkv'
alias playwebm='mpv *.webm'

# yt-dlp
alias yta-aac="yt-dlp --extract-audio --audio-format aac "
alias yta-best="yt-dlp --extract-audio --audio-format best "
alias yta-flac="yt-dlp --extract-audio --audio-format flac "
alias yta-m4a="yt-dlp --extract-audio --audio-format m4a "
alias yta-mp3="yt-dlp --extract-audio --audio-format mp3 "
alias yta-opus="yt-dlp --extract-audio --audio-format opus "
alias yta-vorbis="yt-dlp --extract-audio --audio-format vorbis "
alias yta-wav="yt-dlp --extract-audio --audio-format wav "
alias ytv-best="yt-dlp -f bestvideo+bestaudio "

### SET STARSHIP PROMPT
starship init fish | source
