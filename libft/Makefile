# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jalombar <jalombar@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/17 13:48:12 by jalombar          #+#    #+#              #
#    Updated: 2024/09/11 18:12:05 by jalombar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc   
CFLAGS = -Wall -Werror -Wextra
SRCS = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_strchr.c ft_strcmp.c ft_strdup.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c ft_split.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c
BSRCS = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c
PRINTF_SRCS = ft_printf.c ft_print_ptr.c ft_print_nbr.c ft_print_char.c
OBJS = $(SRCS:.c=.o)
BOBJS = $(BSRCS:.c=.o)
PRINTF_OBJS = $(PRINTF_SRCS:.c=.o)
HEADER = libft.h
NAME = libft.a

all: $(NAME)

$(NAME): $(OBJS) $(BOBJS) $(PRINTF_OBJS)
	ar -rcs $(NAME) $(OBJS) $(BOBJS) $(PRINTF_OBJS)

bonus: $(BOBJS)
	ar -rcs $(NAME) $(BOBJS)

%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) -c $< -o $@
	
clean:
	rm -f $(OBJS)
	rm -f $(BOBJS)
	rm -f $(PRINTF_OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all
