NAME		:= libasm

include	makefile.conf

.PHONY:		all clean fclean re

OBJS		= $(SOURCE:.s=.o)
DEPS		= $(SOURCE:.s=.d)
OUTPUT_OPTION	= -MMD -MP -o $@

-include ${DEPS}

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(ARFLAGS) $(NAME) $(OBJS)
	ranlib $(NAME)

clean:
	rm -f $(OBJS) $(DEPS)

fclean: clean
	rm -f $(NAME)

re: fclean $(NAME)

ctags:
	ctags -R *

container: $(NAME)

help:
	-@echo "clean       - delete .o and .d files"
	-@echo "fclean      - execute make clean and delete binaries"
	-@echo "ctags       - generates vim tags"
	-@echo "container   - create docker image"
