# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abarthel <abarthel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/29 11:56:30 by abarthel          #+#    #+#              #
#    Updated: 2021/05/31 13:12:06 by abarthel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

-include libasm.mk

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(OBJECTS)
	$(AR) $(ARFLAGS) $(NAME) $(OBJECTS)
	ranlib $(NAME)

clean:
	$(RM) $(OBJECTS) $(DEPENDS)

fclean:
	$(RM) $(OBJECTS) $(DEPENDS) $(NAME)

re: fclean $(NAME)

-include $(OBJECTS)

%.o: %.s Makefile $(addsuffix .mk, $(basename $(NAME)))
	$(AS) $(ASLAGS) $< -o $@
