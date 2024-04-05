##
## EPITECH PROJECT, 2023
## sokoban
## File description:
## Makefile
##

CC = gcc

CFLAGS = -Wall -Wextra -Iinclude -ggdb3

SRC_PATH = src/

SRC = \
	$(SRC_PATH)main.c \

OBJ = $(SRC:.c=.o)

NAME = binary

all: $(NAME)

$(NAME): $(OBJ)
	@gcc -o $(NAME) $(OBJ) $(CFLAGS)
	@echo -e "\033[32m[OK]\033[0m": $(NAME)

clean:
	@rm -f $(OBJ)
	@rm -f coding-style-reports.log
	@rm -f *.gcno *.gcda *.gcov vgcore.*
	@echo -e "\033[31m[RM]\033[0m": $(OBJ)

fclean: clean
	@rm -f $(NAME)
	@echo -e "\033[31m[RM]\033[0m": $(NAME)

tests_run:
	@make -C tests/

re: fclean all

.PHONY: all clean fclean re
