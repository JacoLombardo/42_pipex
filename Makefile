# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jalombar <jalombar@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/09/11 17:49:15 by jalombar          #+#    #+#              #
#    Updated: 2024/09/11 18:12:57 by jalombar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
CFLAGS = -Wall -Werror -Wextra -fsanitize=address
HEADER = pipex.h
SRCS = pipex.c source/exec.c source/utils.c
NAME = pipex
LIBFT_PATH = libft
LIBFT = $(LIBFT_PATH)/libft.a

all : $(NAME)

$(NAME): $(SRCS) $(LIBFT)
	$(CC) $(CFLAGS) -o $@ $(SRCS) -L$(LIBFT_PATH) -lft

$(LIBFT):
	$(MAKE) -C $(LIBFT_PATH)

clean:
	$(MAKE) -C $(LIBFT_PATH) clean

fclean: clean
	$(MAKE) -C $(LIBFT_PATH) fclean
	rm -f $(NAME)