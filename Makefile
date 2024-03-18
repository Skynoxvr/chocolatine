##
## EPITECH PROJECT, 2023
## Makefile
## File description:
## rtfm
##

CC			=	gcc

SRC			=	main.c

OBJ			=	$(SRC:.c=.o)

NAME		=	test

$(NAME):	 $(OBJ)
	$(CC) $(OBJ) -o $(NAME)

all:	$(NAME)

tests_run:
	make -C tests/

clean:
	rm -f $(OBJ)

coverage:
	@gcovr

fclean: clean
	rm -f $(NAME)
	make fclean -C ./tests

re:	fclean all

.PHONY:	$(NAME) all clean fclean
