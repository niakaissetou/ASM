##
## EPITECH PROJECT, 2024
## B-PDG-300-PAR-3-1-PDGRUSH3-naira.awadin
## File description:
## Makefile
##
SRC =	src/strlen.asm	\
		src/strcmp.asm	\
		src/strchr.asm	\
		src/strrchr.asm	\
		src/strncmp.asm	\
		src/memcpy.asm	\
		src/memset.asm

CC ?= gcc

OBJ = $(SRC:.asm=.o)

ASFLAGS = -f elf64

%.o: %.asm
	$(AS) $(ASFLAGS) $< -o $@

NAME = libasm.so

AS = nasm

LDFLAGS = -shared -fPIC

RM	=	rm -f

all: $(NAME)

$(NAME): $(OBJ)
	ld $(LDFLAGS) -o $(NAME) $(OBJ)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: re all clean fclean
