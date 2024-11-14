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

# The name of the lib
NAME = libftprintf.a

# Compiler
CC = cc

# Compiling flags
CFLAGS = -Wall -Wextra -Werror

INCLUDES_DIR = .  # Points to the directory containing libft.h

# Source files
SRCS = ft_printf.c print_char.c print_hexa.c print_nbr.c print_ptr.c print_str.c print_unbr.c
#BONUS_SRCS = 
# Object files
OBJS = $(SRCS:.c=.o)
#BONUS_OBJS = $(BONUS_SRCS:.c=.o)

# all rule
all: $(NAME)

# Compile the lib
# ar creates/modify libft.a
# r tells ar to  insert OBJS into the libft.a, if it already exists it will replace same name files
# c tells ar to create the archive if it does not exist
# s creats a index for each function in libft.a
$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

#compiles the bonus
#bonus: $(NAME) $(BONUS_OBJS)
#	ar rcs $(NAME) $(OBJS) $(BONUS_OBJS)

# Compile the object files
%.o: %.c
	$(CC) $(CFLAGS) -I $(INCLUDES_DIR) -c $< -o $@

# clean rule removes .o from srcs
clean:
	rm -rf $(OBJS) 
#$(BONUS_OBJS)

# fclean rule runs clean then removes libft.a
fclean: clean 
	rm -rf $(NAME)

# re rule runs fclean then runs make again
re: fclean
	make && make bonus

# Avoid name clashes
.PHONY: all clean fclean re bonus
