NAME = philo

SRCS = $(shell find "./src/" -name "*.c")
OBJS = ${SRCS:.c=.o}
FLAG = -fsanitize=thread
CC = gcc
FLAGS = -Wall -Wextra -Werror -pthread

RM = rm -rf

R = "\033[31m"
X = "\033[0m"

all: ${NAME}

${NAME}: ${OBJS}
	${CC} ${FLAGS} ${OBJS} $(FLAG) -o ${NAME}

clean:
	${RM} ${OBJS}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY: all clean fclean re