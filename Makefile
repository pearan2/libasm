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

.PHONY	:	all clean fclean re
