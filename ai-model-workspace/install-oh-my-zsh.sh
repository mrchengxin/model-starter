#!/bin/bash

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's|ZSH_THEME="[^"]*"|ZSH_THEME="powerlevel10k/powerlevel10k"|g' ~/.zshrc
# customize powerlevel10k theme
head_p10k_content=$(cat << 'EOF'
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
EOF
)
tail_p10k_content=$(cat << 'EOF'
# To customize prompt, run 'p10k configure' or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
EOF
)
original_zshrc_content=$(cat ~/.zshrc)
new_zshrc_content="${head_p10k_content}\n\n${original_zshrc_content}\n\n${tail_p10k_content}"
echo -e "${new_zshrc_content}" > ~/.zshrc
sh $HOME/.oh-my-zsh/custom/themes/powerlevel10k/gitstatus/install

# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# enable plugins
sed -i 's|plugins=(git)|plugins=(\n    git\n    extract\n    z\n    zsh-syntax-highlighting\n    zsh-autosuggestions\n)|g' ~/.zshrc
