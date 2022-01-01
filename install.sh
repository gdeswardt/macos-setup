#!/bin/bash

#https://patorjk.com/software/taag/#p=display&h=0&f=Colossal&t=homebrew
current_dir=$(pwd)
cd $HOME

echo "                                                          888      
 e88~-_  888-~88e   e88~~8e  888-~88e        d88~\  d88~\ 888-~88e 
d888   i 888  888b d888  88b 888  888       C888   C888   888  888 
8888   | 888  8888 8888__888 888  888        Y88b   Y88b  888  888 
Y888   ' 888  888P Y888    , 888  888         888D   888D 888  888 
 \"88_-~  888-_88"   "88___/  888  888       \_88P  \_88P  888  888 
         888                                                       "


mkdir -p ~/.ssh
touch ~/.ssh/rsa_id
chmod 600 ~/.ssh/rsa_id
touch ~/.ssh/rsa_id.pub

echo "Update the id_rsa and id_rsa.pub file in the ~./ssh folder"

read -e -p "Please press 'RETURN' once you have done so for the script to continue"

echo "

888                                      888                                     
888                                      888                                     
888                                      888                                     
88888b.   .d88b.  88888b.d88b.   .d88b.  88888b.  888d888  .d88b.  888  888  888 
888 \"88b d88\"\"88b 888 \"888 \"88b d8P  Y8b 888 \"88b 888P\"   d8P  Y8b 888  888  888 
888  888 888  888 888  888  888 88888888 888  888 888     88888888 888  888  888 
888  888 Y88..88P 888  888  888 Y8b.     888 d88P 888     Y8b.     Y88b 888 d88P 
888  888  \"Y88P\"  888  888  888  \"Y8888  88888P\"  888      \"Y8888   \"Y8888888P\"  
                                                                                 
                                                                                 
                                                                                 
" 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git svn

# SDKMAN
curl -s "https://get.sdkman.io" | bash

#OH MY ZSH
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/matthieusb/zsh-sdkman.git ~/.oh-my-zsh/custom/plugins/zsh-sdkman
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
git clone https://github.com/vladmyr/dotfiles-plugin.git ~/.oh-my-zsh/custom/plugins/dotfiles
git clone git@github.com:gdeswardt/zmac.git ~/.oh-my-zsh/custom/plugins/zmac

echo "
     888          888           .d888 d8b 888                   
     888          888          d88P\"  Y8P 888                   
     888          888          888        888                   
 .d88888  .d88b.  888888       888888 888 888  .d88b.  .d8888b  
d88\" 888 d88\"88b 888          888    888 888 d8P  Y8b 88K      
888  888 888  888 888          888    888 888 88888888 \"Y8888b. 
Y88b 888 Y88..88P Y88b.        888    888 888 Y8b.          X88 
 \"Y88888  \"Y88P\"   \"Y888       888    888 888  \"Y8888   88888P' 
                                                                
                                                                
                                                                "

cd ~
rm -Rf .git
git init
git remote add origin git@github.com:gdeswardt/dotfiles.git
git fetch
git checkout -t origin/master -f


cd $current_dir
