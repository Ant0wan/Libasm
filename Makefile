# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abarthel <abarthel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/29 11:56:30 by abarthel          #+#    #+#              #
#    Updated: 2021/05/29 14:24:47 by abarthel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

-include libasm.mk

.PHONY: all clean fclean re

all: $(NAME)

$(NAME):
	nasm -f elf64 -g main.s -o main.o
	ld -g main.o
