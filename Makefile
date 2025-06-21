# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tdharmar <tdharmar@student.42bangkok.co    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/06/21 12:26:24 by tdharmar          #+#    #+#              #
#    Updated: 2025/06/21 12:26:24 by tdharmar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			:=	libftprintf.a

CC				:=	cc
CFLAG			:=	-Wall -Wextra -Werror

SRCS_FILES		:=	ft_printf.c
#  ft_print_char.c ft_print_str.c ft_print_nbr.c \
					ft_print_hex.c ft_print_pointer.c ft_print_unsigned.c \

LIBFT			:=	libft/
SRC_DIR			:=	srcs/
INC_DIR			:=	includes/

SRCS			:=	$(SRCS_FILES:%.c=$(SRC_DIR)%.c)
OBJS			:=	$(SRCS:%.c=%.o)

all				:	$(NAME)

$(NAME)			:	$(OBJS) Makefile
	make -C ${LIBFT}
	cp libft/libft.a ${NAME}
	ar rcs $(NAME) $(OBJS)

$(OBJS)			:	%.o : %.c
	$(CC) $(CFLAGS) -I$(INC_DIR) -I$(LIBFT) -c $< -o $@

clean			:
	rm -rf $(OBJS) $(BONUS_OBJS)
	@make clean -C $(LIBFT)

fclean			:	clean
	rm -rf $(NAME)
	@rm -rf $(LIBFT)/libft.a

re				:	fclean all

.PHONY			:	all clean fclean re