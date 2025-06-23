# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tdharmar <tdharmar@student.42bangkok.co    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/06/22 19:57:09 by tdharmar          #+#    #+#              #
#    Updated: 2025/06/22 19:57:09 by tdharmar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			:=	libftprintf.a

CC				:=	cc
CFLAGS			:=	-Wall -Wextra -Werror

SRCS_FILES		:=	ft_printf.c			ft_print_char.c		ft_print_string.c \
					ft_print_dec.c		ft_print_hex.c		ft_print_pointer.c \
					ft_print_unsigned.c	

LIBFT_DIR		:=	libft/
LIBFT_A			:=	$(LIBFT_DIR)libft.a

SRC_DIR			:=	srcs/
INC_DIR			:=	includes/

SRCS			:=	$(SRCS_FILES:%=$(SRC_DIR)%)
OBJS			:=	$(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	make -C $(LIBFT_DIR)
	cp $(LIBFT_A) $(NAME)
	ar rcs $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -I$(INC_DIR) -I$(LIBFT_DIR) -c $< -o $@

clean:
	rm -f $(OBJS)
	make clean -C $(LIBFT_DIR)

fclean: clean
	rm -f $(NAME)
	rm -f $(LIBFT_A)

re: fclean all

.PHONY: all clean fclean re
