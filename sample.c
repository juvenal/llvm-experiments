#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
	int i = 0;

	printf("Starting count...\n");
	while (i < 11) {
		i++;
		printf("Count at stage %d\n", i);
	}

	return EXIT_SUCCESS;
}

