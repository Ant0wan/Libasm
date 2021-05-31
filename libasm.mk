# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    libasm.mk                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abarthel <abarthel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/29 11:57:35 by abarthel          #+#    #+#              #
#    Updated: 2021/05/31 13:14:33 by abarthel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME := libasm.a

SOURCES_PATH := ./src/

SOURCES := $(wildcard ./src/*.s)

LD := ld

LDFLAGS := -g

AS := nasm

ASFLAGS := -f elf64 -g

OBJECTS := $(SOURCES:.s=.o)

ARFLAGS := rc
