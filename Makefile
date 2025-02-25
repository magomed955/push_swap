# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmutsulk <mmutsulk@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/02/17 11:05:21 by mmutsulk          #+#    #+#              #
#    Updated: 2025/02/17 11:05:21 by mmutsulk         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap

SRCS = \
		src/push_swap.c\
		src/ft_strdup.c\
		src/ft_atoi.c\
		src/ft_strlen.c\
		src/ft_split.c\
		src/quick_sort.c\
		src/medianne.c\
		utils/parse_instructions.c\
		utils/list_utils.c\
		utils/add_instructions.c\
		utils/reverse_rotate_instructions.c\
		utils/rotate_instructions.c\
		utils/swap_instructions.c\
		algo/optimized_push_swap.c\
		algo/move_optimization.c\
		algo/small_sort.c

INCLUDES = push_swap.h

OBJS = ${SRCS:.c=.o}

CC = gcc

CFLAGS = -Wall -Werror -Wextra -g3

all: ${NAME}

$(NAME): ${OBJS}
	@echo "\033[1;32m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
	@echo "\033[1;32m🚀 [✔] Compilation in progress... 🚀\033[0m"
	@echo "\033[1;32m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
	${CC} ${CFLAGS} -I ${INCLUDES} ${OBJS} -o $(NAME)
	@echo "\033[1;34m🎉 [✔] Compilation completed successfully! 🎉\033[0m"
	@echo "\033[1;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"

clean:
	@echo "\033[1;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
	@echo "\033[1;33m🗑️ [✗] Removing object files...\033[0m"
	@echo "\033[1;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
	rm -rf ${OBJS}

fclean: clean
	@echo "\033[1;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
	@echo "\033[1;31m🔥 [✗] Removing executable...\033[0m"
	@echo "\033[1;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
	rm -rf ${NAME}

re: fclean all

.PHONY: all clean fclean re
