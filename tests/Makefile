##
## EPITECH PROJECT, 2023
## chocolatine
## File description:
## Makefile
##

CC = gcc

CFLAGS = --coverage -lcriterion

SRC = tests.c

OBJ = $(SRC:.c=.o)

NAME = unit_tests

all: $(NAME)

$(NAME): $(OBJ)
	@gcc -o $(NAME) $(OBJ) $(CFLAGS)
	@echo -e "\033[32m[OK]\033[0m": $(NAME)

clean:
	@rm -f $(OBJ)
	@rm -f *.gcno *.gcda *.gcov vgcore.*
	@echo -e "\033[31m[RM]\033[0m": $(OBJ)

fclean: clean
	@rm -f $(NAME)
	@echo -e "\033[31m[RM]\033[0m": $(NAME)

re: fclean all

.PHONY: all clean fclean re
