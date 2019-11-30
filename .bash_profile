if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi


# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"

# powerline
export PATH="$PATH:$HOME/.local/bin"
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /home/mike/.local/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

