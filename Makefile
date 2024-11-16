# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jpedro-f <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/14 15:54:36 by jpedro-f          #+#    #+#              #
#    Updated: 2024/11/14 15:54:38 by jpedro-f         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libftprintf.a

CC = cc

CFLAGS = -Wall -Wextra -Werror

INCLUDES_DIR = .

SRCS = ft_printf.c print_char.c print_hexa.c print_nbr.c print_ptr.c print_str.c print_unbr.c

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -I $(INCLUDES_DIR) -c $< -o $@

clean:
	rm -rf $(OBJS) 

fclean: clean 
	rm -rf $(NAME)

re: fclean
	make

.PHONY: all clean fclean re bonus
