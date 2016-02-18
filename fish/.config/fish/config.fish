set PATH ~/npm/bin $PATH
set BROWSER chromium
set EDITOR vim
set VISUAL vim
set fish_greeting ""
set -x NDK_HOME /opt/android-ndk

# Kill all running containers.
alias dockerkill='docker kill (docker ps -q)'

# Delete all docker images and containers.
alias dockernuke='docker rm (docker ps -a -q); docker rmi -f (docker images -q)'

# Git alias.
alias g="git"
alias gs="cowsay -f ghostbusters 'gs is ghostscript, not git status!'"

# Start an SSH agent if required, if not, connect to it.
initialise_ssh_agent

# Local config.
if [ -f ~/.local.fish ]
  . ~/.local.fish
end

set -l GRUVBOX_SCRIPT ~/dotfiles/vim/.vim/plugged/gruvbox/gruvbox_256palette.sh
if test -f $GRUVBOX_SCRIPT
  bash $GRUVBOX_SCRIPT
end

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
set -x COCOS_CONSOLE_ROOT /home/josh/scratch/cocos2d-x-3.10/tools/cocos2d-console/bin

# Add environment variable COCOS_X_ROOT for cocos2d-x
set -x COCOS_X_ROOT /home/josh/scratch

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
set -x COCOS_TEMPLATES_ROOT /home/josh/scratch/cocos2d-x-3.10/templates

# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
set -x ANDROID_SDK_ROOT /home/josh/android-sdk
