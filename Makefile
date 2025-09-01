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
					ft_print_unsigned.c	 \
					ft_helper_func.c

SRC_DIR			:=	srcs/
INC_DIR			:=	includes/

SRCS			:=	$(SRCS_FILES:%=$(SRC_DIR)%)
OBJS			:=	$(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -I$(INC_DIR) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re


#NAME			:=	libft.a

#CC				:=	cc
#CFLAGS			:=	-Wall -Wextra -Werror
#RM				:=	rm -f

#SRCS			:=	ft_isalpha.c	ft_isdigit.c	ft_isalnum.c	ft_isascii.c	ft_isprint.c \
#					ft_strlen.c		ft_memset.c		ft_bzero.c		ft_memcpy.c		ft_memmove.c \
#					ft_strlcpy.c	ft_strlcat.c	ft_toupper.c	ft_tolower.c \
#					ft_strchr.c		ft_strrchr.c	ft_strncmp.c	ft_memchr.c \
#					ft_memcmp.c		ft_strnstr.c	ft_atoi.c		ft_calloc.c \
#					ft_strdup.c \
#					ft_substr.c		ft_strjoin.c \
#					ft_strtrim.c	ft_split.c		ft_itoa.c \
#					ft_strmapi.c	ft_striteri.c	ft_putchar_fd.c \
#					ft_putstr_fd.c	ft_putendl_fd.c	ft_putnbr_fd.c \

## BONUS			:=	ft_lstnew.c			ft_lstadd_front.c	ft_lstsize.c \
## 					ft_lstlast.c		ft_lstadd_back.c	ft_lstdelone.c \
## 					ft_lstclear.c		ft_lstiter.c		ft_lstmap.c


## BONUS			:=	bonus/ft_lstnew_bonus.c		bonus/ft_lstadd_front_bonus.c	bonus/ft_lstsize_bonus.c \
## 					bonus/ft_lstlast_bonus.c	bonus/ft_lstadd_back_bonus.c	bonus/ft_lstdelone_bonus.c \
## 					bonus/ft_lstclear_bonus.c	bonus/ft_lstiter_bonus.c		bonus/ft_lstmap_bonus.c
					
#BONUS			:=	ft_lstnew_bonus.c		ft_lstadd_front_bonus.c		ft_lstsize_bonus.c \
#					ft_lstlast_bonus.c		ft_lstadd_back_bonus.c		ft_lstdelone_bonus.c \
#					ft_lstclear_bonus.c		ft_lstiter_bonus.c			ft_lstmap_bonus.c
					


#OBJS			:=	${SRCS:.c=.o}
#BONUS_OBJS		:=	${BONUS:.c=.o}

#all				:	$(NAME)

#$(NAME)			:	$(OBJS)
#	ar rcs $@ $^

#%.o				:	%.c
#	${CC} ${CFLAGS} -I. -c $< -o $@

#bonus			:	${BONUS_OBJS} all
#	ar rcs ${NAME} ${BONUS_OBJS}

#clean			:
#	${RM} ${OBJS} ${BONUS_OBJS}

#fclean			:	clean
#	${RM} ${NAME}

#re				:	fclean all

#.PHONY			:	all clean fclean re bonus