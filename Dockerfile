# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abarthel <abarthel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/29 12:10:23 by abarthel          #+#    #+#              #
#    Updated: 2021/05/29 13:13:38 by abarthel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM rust:1.40
LABEL maintainer "abarthel <abarthel@student.42.fr>"
RUN apt update && apt install -y \
	nasm \
	make \
	vim \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /root/.vim/plugin/
RUN wget https://raw.githubusercontent.com/42Paris/42header/master/vim/stdheader.vim -O /root/.vim/plugin/stdheader.vim
ENV USER=abarthel MAIL=abarthel@student.42.fr
RUN wget https://raw.githubusercontent.com/Ant0wan/config/master/assets/vimrc -O /root/.vimrc
WORKDIR /libasm
CMD ["/bin/bash"]
