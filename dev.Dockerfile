FROM amazon/aws-cli

RUN yum update -y
RUN yum install git zsh wget tar -y

RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
RUN wget "https://gist.githubusercontent.com/gitgitWi/93f3583109ac09076fbef6b64c76536f/raw/27a6dee2807396816f9b292ccf3f69c89155b587/.zshrc" -O $HOME/.zshrc

RUN git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf
RUN touch /root/.tool-version