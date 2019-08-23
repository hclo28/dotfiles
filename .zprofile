export PATH=$PATH:$HOME/bin

for f (~/.zsh/*.zsh) source "${f}"
for f (~/.zsh/peco-scripts/*.zsh) source "${f}"

if [ -f ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
