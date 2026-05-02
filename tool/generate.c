
#include <stdio.h>
#include <stdlib.h>

void display(char *buf)
{
	printf("char code[] = \"");
	while (*buf)
	{
		if (*buf == '"')
			printf("\\\"");
		else if (*buf == '\\')
			printf("\\\\");
		else if (*buf == '\t')
			printf("\\t");
		else if (*buf == '\n')
			printf("\\n");
		else
			printf("%c", *buf);
		buf++;
	}
	printf("\";");
}

int main(int argc, char **argv) {
    FILE *file;
    long fileSize;
    char *buffer;

    if (argc != 2)
	    return (printf("Usage: file.c"));
    file = fopen(argv[1], "rb");
    if (file == NULL) {
	printf("Open error\n");
        return EXIT_FAILURE;
    }
    fseek(file, 0, SEEK_END);
    fileSize = ftell(file);
    fseek(file, 0, SEEK_SET); // Revenir au début du fichier
    buffer = (char *)malloc(fileSize + 1); // +1 pour le caractère nul
    if (buffer == NULL) {
	printf("Error\n");
        fclose(file);
        return EXIT_FAILURE;
    }
    fread(buffer, 1, fileSize, file);
    buffer[fileSize] = '\0'; // Ajouter le caractère nul à la fin
    fclose(file);

    display(buffer);
    free(buffer);
    return EXIT_SUCCESS;
}
