##
## EPITECH PROJECT, 2019
## Makefile
## File description:
## rtfm
##

CC    =    gcc

SRC    =    main.c

OBJ    =    $(SRC:.c=.o)

NAME    =    my_exec

all:    $(NAME)
$(NAME):    $(OBJ)
    $(CC) $(OBJ) -o $(NAME)

clean:
    $(RM) $(OBJ)

tests_run:
    make -C ./tests

coverage:
    @gcovr

fclean: clean
    rm -f $(NAME)
    make fclean -C ./tests

re:    fclean all

.PHONY:    $(NAME) all clean fclean