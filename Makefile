# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: timanish <timanish@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/18 11:04:36 by yonuma            #+#    #+#              #
#    Updated: 2024/07/21 19:56:10 by timanish         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
CFRAGS = -Wall -Wextra -Werror
NAME = libft.a
SRCS = 	ft_bzero.c \
		ft_isalnum.c\
		ft_isalpha.c\
		ft_isascii.c\
		ft_isdigit.c\
		ft_isprint.c\
		ft_memcpy.c\
		ft_memset.c\
		ft_strlen.c\
		ft_tolower.c\
		ft_toupper.c\
		ft_memmove.c\
		ft_strlcpy.c\
		ft_strlcat.c\
		ft_strchr.c\
		ft_strrchr.c\
		ft_strncmp.c\
		ft_memchr.c\
		ft_memcmp.c\
		ft_strnstr.c\
		ft_atoi.c\
		ft_calloc.c\
		ft_strdup.c\
		ft_substr.c\
		ft_strjoin.c\
		ft_strtrim.c\
		ft_split.c\
		ft_itoa.c\
		ft_strmapi.c\
		ft_striteri.c\
		ft_putchar_fd.c\
		ft_putstr_fd.c\
		ft_putendl_fd.c\
		ft_putnbr_fd.c\
		
SRCSB = ft_lstnew.c\
		ft_lstadd_front.c\
		 ft_lstsize.c\
		 ft_lstlast.c\
		 ft_lstadd_back.c\
		 ft_lstdelone.c\
		 ft_lstclear.c\
		 ft_lstiter.c\
		 ft_lstmap.c\

OBJS = $(SRCS:.c=.o)

OBJSB = $(SRCSB:.c=.o)

INCLUDES = -I includes

$(NAME) :    $(OBJS)
	ar rc $(NAME) $(OBJS)


%.o:%.c
	$(CC) -c  $(CFLAGS) $^ -o $@ $(INCLUDES)

all : $(NAME)

bonus : .bonus

.bonus : $(OBJSB)
	ar rc $(NAME) $(OBJSB)
	@touch .bonus
		
clean :
	rm -f $(OBJS) $(OBJSB)
	rm -f .bonus

fclean : clean
	rm -f $(NAME)

re : fclean all 

.PHONY : all clean fclean re bonus