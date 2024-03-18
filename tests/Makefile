##
## EPITECH PROJECT, 2023
## DOP
## File description:
## Makefile
##

CC = gcc

SRC = $(wildcard *.c)

OBJ = $(SRC:.c=.o)

NAME = unit_tests

CFLAGS = --coverage

LDFLAGS = --coverage -lcriterion

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) -o $(NAME) $(OBJ) $(LDFLAGS)
	./unit_tests

clean:
	$(RM) $(OBJ)
	$(RM) *.gc*

fclean: clean
	$(RM) $(NAME)

re: fclean all
.PHONY: all clean fclean re

re:				fclean al