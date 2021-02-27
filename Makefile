# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: honlee <honlee@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/24 21:36:41 by honlee            #+#    #+#              #
#    Updated: 2021/02/24 21:36:45 by honlee           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	= ft_strlen.s \
			ft_strcpy.s \
			ft_strcmp.s \
			ft_write.s \
			ft_read.s \
			ft_strdup.s
OBJS	= ${SRCS:.s=.o}
NAME	= libasm.a

%.o		:	%.s
			nasm -f macho64 $<

$(NAME) : 	${OBJS}
		ar -rc $(NAME) ${OBJS}

all		:	$(NAME)

bonus	:	all

clean	:
		rm -f ${OBJS}

fclean	:	clean
		rm -f $(NAME)

re		:	fclean all

test	:	re
			gcc main.c $(NAME)
			./a.out

.PHONY	:	all clean fclean re
