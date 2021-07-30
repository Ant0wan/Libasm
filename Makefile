NAME		:= libasm.a

include	makefile.conf

.PHONY:		all clean fclean re
OBJS		= $(SOURCE:.s=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(ARFLAGS) $(NAME) $(OBJS)
	ranlib $(NAME)

clean:
	rm -f $(OBJS)

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
